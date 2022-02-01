import 'dart:convert';

import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:alnoor/core/network/repository/price_currency/price_currency_repository.dart';
import 'package:alnoor/core/storage/local_data_shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final PriceCurrencyRepository repository;

  SplashBloc({required this.repository}) : super(InitialSplash());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is LoadSplashData) {
      yield* _mapLoadSplashToState(event);
    }

    if (event is LoadAdsData) {
      yield* _mapLoadAds(event);
    }

    if (event is LoadPriceData) {
      yield* _mapLoadPrice(event);
    }
    if (event is LoadAboutData) {
      yield* _mapLoadAbout(event);
    }
  }

  Stream<SplashState> _mapLoadSplashToState(LoadSplashData event) async* {
    yield SplashLoading();

    try {
      String? token = await StorageUtil.getString('fcm_token', defValue: '');

      if (token!.isEmpty) {
        FirebaseMessaging messaging = FirebaseMessaging.instance;
        await messaging.getToken().then((value) async {
          await repository
              .postFcmToken(FcmTokenRequest(fcmToken: value.toString()));
          await StorageUtil.setString('fcm_token', value.toString());
        });
      }

      var data = await repository.getPrices_v2();
      if (data != null) {
        ApiPriceCurrencyConstant.pricesAboutResponse = data.listActive;
        ApiPriceCurrencyConstant.pricesCurrencyResponse =
            ApiPriceCurrencyConstant.pricesAboutResponse!.prices;
        ApiPriceCurrencyConstant.aboutUs =
            ApiPriceCurrencyConstant.pricesAboutResponse!.aboutUs;
        await StorageUtil.setSerialize(
            'prices_currency',
            ListItemsPriceCurrency(
                listprice: ApiPriceCurrencyConstant.pricesCurrencyResponse));
        await StorageUtil.setSerialize('about_us_local',
            AboutUsResponse(aboutUs: ApiPriceCurrencyConstant.aboutUs!));
      }

      // var ads = await repository.getAds();
      // if (ads != null) {
      //   ApiPriceCurrencyConstant.AdsResponse = ads.listAds;
      // }
      // var about_us = await repository.getAboutUs();
      // if (about_us != null) {
      //   await StorageUtil.setSerialize(
      //       'about_us_local', AboutUsResponse(aboutUs: about_us.aboutUs));
      //   ApiPriceCurrencyConstant.aboutUs = about_us.aboutUs;
      // }

      yield SplashHasData();
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        var currencypriceslocal =
            await StorageUtil.readSerialize('prices_currency');

        // ApiPriceCurrencyConstant.AdsResponse =
        //     json.decode(await StorageUtil.getListString('ads'));
        // ApiPriceCurrencyConstant.aboutUs =
        //     json.decode(await StorageUtil.getString('about_us')) as AboutUs;

        yield SplashNoInternetConnection();
      } else if (e.type == DioErrorType.other) {
        ApiPriceCurrencyConstant.listItemsPriceCurrency =
            ListItemsPriceCurrency.fromJson(
                await StorageUtil.readSerialize('prices_currency'));
        ApiPriceCurrencyConstant.aboutUsResponse = AboutUsResponse.fromJson(
            await StorageUtil.readSerialize('about_us_local'));
        ApiPriceCurrencyConstant.aboutUs =
            ApiPriceCurrencyConstant.aboutUsResponse!.aboutUs;
        ApiPriceCurrencyConstant.pricesCurrencyResponse =
            ApiPriceCurrencyConstant.listItemsPriceCurrency!.listprice;
        if (ApiPriceCurrencyConstant.pricesCurrencyResponse != [])
          yield SplashHasDataWithNoInternet();
        else
          yield SplashNoInternetConnection();
      }
    }
  }

  Stream<SplashState> _mapLoadAds(LoadAdsData event) async* {
    yield SplashLoading();

    try {
      var ads = await repository.getAds();
      if (ads != null) ApiPriceCurrencyConstant.AdsResponse = ads.listAds;

      yield SplashHasData();
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        yield SplashAdsNoInternetConnection();
      } else if (e.type == DioErrorType.other) {
        ApiPriceCurrencyConstant.listItemsPriceCurrency =
            ListItemsPriceCurrency.fromJson(
                await StorageUtil.readSerialize('prices_currency'));
        ApiPriceCurrencyConstant.aboutUsResponse = AboutUsResponse.fromJson(
            await StorageUtil.readSerialize('about_us_local'));
        ApiPriceCurrencyConstant.aboutUs =
            ApiPriceCurrencyConstant.aboutUsResponse!.aboutUs;
        ApiPriceCurrencyConstant.pricesCurrencyResponse =
            ApiPriceCurrencyConstant.listItemsPriceCurrency!.listprice;
        if (ApiPriceCurrencyConstant.pricesCurrencyResponse != [])
          yield SplashAdsNoInternetConnection();
      }
    }
  }

  Stream<SplashState> _mapLoadPrice(LoadPriceData event) async* {
    yield SplashLoading();

    try {
      var prices = await repository.getPrices();
      if (prices != null) {
        ApiPriceCurrencyConstant.pricesCurrencyResponse = prices.listprice;
        await StorageUtil.setSerialize('prices_currency',
            ListItemsPriceCurrency(listprice: prices.listprice));
      }

      yield SplashHasData();
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        yield SplashNoInternetConnection();
      } else if (e.type == DioErrorType.other) {
        ApiPriceCurrencyConstant.listItemsPriceCurrency =
            ListItemsPriceCurrency.fromJson(
                await StorageUtil.readSerialize('prices_currency'));
        // ApiPriceCurrencyConstant.aboutUsResponse = AboutUsResponse.fromJson(
        //     await StorageUtil.readSerialize('about_us_local'));
        // ApiPriceCurrencyConstant.aboutUs =
        //     ApiPriceCurrencyConstant.aboutUsResponse!.aboutUs;
        ApiPriceCurrencyConstant.pricesCurrencyResponse =
            ApiPriceCurrencyConstant.listItemsPriceCurrency!.listprice;
        if (ApiPriceCurrencyConstant.pricesCurrencyResponse != [])
          yield SplashHasDataWithNoInternet();
        else
          yield SplashNoInternetConnection();
      }
    }
  }

  Stream<SplashState> _mapLoadAbout(LoadAboutData event) async* {
    yield SplashLoading();

    try {
      var about_us = await repository.getAboutUs();
      if (about_us != null) {
        await StorageUtil.setSerialize(
            'about_us_local', AboutUsResponse(aboutUs: about_us.aboutUs));
        ApiPriceCurrencyConstant.aboutUs = about_us.aboutUs;
      }
      yield SplashHasData();
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        yield SplashNoInternetConnection();
      } else if (e.type == DioErrorType.other) {
        // ApiPriceCurrencyConstant.listItemsPriceCurrency =
        //     ListItemsPriceCurrency.fromJson(
        //         await StorageUtil.readSerialize('prices_currency'));
        ApiPriceCurrencyConstant.aboutUsResponse = AboutUsResponse.fromJson(
            await StorageUtil.readSerialize('about_us_local'));
        ApiPriceCurrencyConstant.aboutUs =
            ApiPriceCurrencyConstant.aboutUsResponse!.aboutUs;
        // ApiPriceCurrencyConstant.pricesCurrencyResponse =
        //     ApiPriceCurrencyConstant.listItemsPriceCurrency!.listprice;
        // if (ApiPriceCurrencyConstant.pricesCurrencyResponse != [])
        if (ApiPriceCurrencyConstant.aboutUs != null)
          yield SplashHasData();
        else
          yield SplashNoInternetConnection();
      }
    }
  }
}
