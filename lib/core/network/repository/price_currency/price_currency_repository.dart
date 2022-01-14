import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';

abstract class PriceCurrencyRepository {
  Future<ListItemsPriceCurrency> getPrices();

  Future<ListItemsAds> getAds();

  Future<String> postFcmToken(FcmTokenRequest fcmTokenRequest);

  Future<AboutUsResponse> getAboutUs();
}
