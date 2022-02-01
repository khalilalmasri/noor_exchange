import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/ads/ads.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:alnoor/core/network/model/v2/active_prices_about_us/response_prices_about_us.dart';

class ApiPriceCurrencyConstant {
  static List<ItemOfPriceCurrencyResponse> pricesCurrencyResponse =
  List<ItemOfPriceCurrencyResponse>.empty();

  static ItemOfPriceAboutResponse? pricesAboutResponse = null;

  static ListItemsPriceCurrency? listItemsPriceCurrency =null;


  static List<ItemOfAdsResponse> AdsResponse = List<ItemOfAdsResponse>.empty();

  static AboutUs? aboutUs = null;

  static AboutUsResponse? aboutUsResponse = null;

}