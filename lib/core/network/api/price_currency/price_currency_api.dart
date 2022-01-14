import 'package:alnoor/core/network/api/api_constant.dart';
import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/fcm_token/fcm_token.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'price_currency_api.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class RequestPriceCurrency {
  factory RequestPriceCurrency(Dio dio, {String baseUrl}) =
      _RequestPriceCurrency;

  @GET("currency-price")
  Future<ListItemsPriceCurrency> getPrices();

  @POST('post-fcm-token')
  Future<String> postFcmToken(@Body() FcmTokenRequest fcmTokenRequest);

  @GET('public-ads')
  Future<ListItemsAds> getAds();

  @GET('company_info')
  Future<AboutUsResponse> getAboutUs();
}
