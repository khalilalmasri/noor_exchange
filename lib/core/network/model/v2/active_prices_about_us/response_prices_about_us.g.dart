// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_prices_about_us.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItemsPriceAbout _$ListItemsPriceAboutFromJson(Map<String, dynamic> json) {
  return ListItemsPriceAbout(
    listActive:
        ItemOfPriceAboutResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListItemsPriceAboutToJson(
        ListItemsPriceAbout instance) =>
    <String, dynamic>{
      'data': instance.listActive,
    };

ItemOfPriceAboutResponse _$ItemOfPriceAboutResponseFromJson(
    Map<String, dynamic> json) {
  return ItemOfPriceAboutResponse(
    prices: (json['prices'] as List<dynamic>)
        .map((e) =>
            ItemOfPriceCurrencyResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    aboutUs: AboutUs.fromJson(json['about_us'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemOfPriceAboutResponseToJson(
        ItemOfPriceAboutResponse instance) =>
    <String, dynamic>{
      'prices': instance.prices,
      'about_us': instance.aboutUs,
    };
