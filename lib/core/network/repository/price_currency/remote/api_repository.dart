import 'package:alnoor/core/network/api/price_currency/price_currency_api.dart';
import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:alnoor/core/network/model/v2/active_prices_about_us/response_prices_about_us.dart';
import 'package:alnoor/core/storage/local_data_shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:alnoor/core/network/repository/price_currency/price_currency_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiRepository implements PriceCurrencyRepository {
  Dio? _dio;
  RequestPriceCurrency? __requestPriceCurrency;

  ApiRepository() {
    _dio = Dio();
    _dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      compact: true,
    ));
    __requestPriceCurrency = RequestPriceCurrency(_dio!);
  }

  addAuthenticationHeader() async {
    _dio = Dio();
    _dio!.options.headers = <String, dynamic>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    _dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      compact: true,
    ));
    __requestPriceCurrency = RequestPriceCurrency(_dio!);
  }

  @override
  Future<ListItemsPriceCurrency> getPrices() async {
    await this.addAuthenticationHeader();
    return __requestPriceCurrency!.getPrices();
  }

  @override
  Future<String> postFcmToken(FcmTokenRequest fcmTokenRequest) async {
    await this.addAuthenticationHeader();
    return await __requestPriceCurrency!.postFcmToken(fcmTokenRequest);
  }

  @override
  Future<ListItemsAds> getAds() async {
    await this.addAuthenticationHeader();
    return await __requestPriceCurrency!.getAds();
  }

  @override
  Future<AboutUsResponse> getAboutUs() async {
    await this.addAuthenticationHeader();
    return await __requestPriceCurrency!.getAboutUs();
  }

  @override
  Future<ListItemsPriceAbout> getPrices_v2() async{
    await this.addAuthenticationHeader();
    return __requestPriceCurrency!.getPrices_v2();
  }
}
