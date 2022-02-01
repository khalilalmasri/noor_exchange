import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:alnoor/core/network/model/v2/active_prices_about_us/response_prices_about_us.dart';

import 'price_currency_repository.dart';
import 'remote/api_repository.dart';

class PriceCurrencyRepositoryImpl extends PriceCurrencyRepository {
  final ApiRepository apiRepository;

  static final PriceCurrencyRepositoryImpl _singleton =
      PriceCurrencyRepositoryImpl._internal(apiRepository: ApiRepository());

  factory PriceCurrencyRepositoryImpl() {
    return _singleton;
  }

  PriceCurrencyRepositoryImpl._internal({required this.apiRepository});

  @override
  Future<ListItemsPriceCurrency> getPrices() async {
    return await apiRepository.getPrices();
  }

  @override
  Future<String> postFcmToken(FcmTokenRequest fcmTokenRequest) async {
    return await apiRepository.postFcmToken(fcmTokenRequest);
  }

  @override
  Future<ListItemsAds> getAds() async {
    return await apiRepository.getAds();
  }

  @override
  Future<AboutUsResponse> getAboutUs() async {
    return await apiRepository.getAboutUs();
  }

  @override
  Future<ListItemsPriceAbout> getPrices_v2() async {
    return await apiRepository.getPrices_v2();
  }
}
