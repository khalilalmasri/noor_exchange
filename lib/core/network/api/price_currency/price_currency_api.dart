import 'package:alnoor/core/network/api/api_constant.dart';
import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:alnoor/core/network/model/v2/active_prices_about_us/response_prices_about_us.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'price_currency_api.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class RequestPriceCurrency {
  factory RequestPriceCurrency(Dio dio, {String baseUrl}) =
      _RequestPriceCurrency;

  @GET("v1/currency-price")
  Future<ListItemsPriceCurrency> getPrices();

  @POST('v2/post-fcm-token')
  Future<String> postFcmToken(@Body() FcmTokenRequest fcmTokenRequest);

  @GET('v1/public-ads')
  Future<ListItemsAds> getAds();

  @GET('v1/company_info')
  Future<AboutUsResponse> getAboutUs();

  @GET("v2/currency-price")
  Future<ListItemsPriceAbout> getPrices_v2();

}
