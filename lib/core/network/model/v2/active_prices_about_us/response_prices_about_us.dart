import 'package:alnoor/core/network/model/about_us/about_us.dart';
import 'package:alnoor/core/network/model/price_currency/response_price_currency.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'response_prices_about_us.g.dart';


@JsonSerializable()
class ListItemsPriceAbout extends Equatable {
  ListItemsPriceAbout({
    required this.listActive,
  });

  @JsonKey(name: 'data')
  final ItemOfPriceAboutResponse listActive;

  factory ListItemsPriceAbout.fromJson(Map<String, dynamic> json) =>
      _$ListItemsPriceAboutFromJson(json);

  Map<String, dynamic> toJson() => _$ListItemsPriceAboutToJson(this);
  @override
  List<Object> get props => [listActive];
}

@JsonSerializable(nullable: true)
class ItemOfPriceAboutResponse extends Equatable {
  ItemOfPriceAboutResponse({
    required this.prices,
    required this.aboutUs,

  });
  @JsonKey(name: 'prices')
  final List<ItemOfPriceCurrencyResponse> prices;

  @JsonKey(name: 'about_us')
  final AboutUs aboutUs;




  @override
  List get props => [
    prices,
    aboutUs,

  ];
  factory ItemOfPriceAboutResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemOfPriceAboutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItemOfPriceAboutResponseToJson(this);

}
