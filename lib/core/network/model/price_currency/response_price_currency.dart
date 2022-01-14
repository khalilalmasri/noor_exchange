import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'response_price_currency.g.dart';


@JsonSerializable()
class ListItemsPriceCurrency extends Equatable {
  ListItemsPriceCurrency({
    required this.listprice,
  });

  @JsonKey(name: 'data')
  final List<ItemOfPriceCurrencyResponse> listprice;

  factory ListItemsPriceCurrency.fromJson(Map<String, dynamic> json) =>
      _$ListItemsPriceCurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$ListItemsPriceCurrencyToJson(this);
  @override
  List<Object> get props => [listprice];
}

@JsonSerializable(nullable: true)
class ItemOfPriceCurrencyResponse extends Equatable {
  ItemOfPriceCurrencyResponse({
    required this.currencyBuyCode,
    required this.currencyBuyName,
    required this.currencySellingCode,
    required this.currencySellingName,
    required this.currencySellingPrice,
    required this.currencyBuyPrice,
    required this.lastUpdate,
  });
  @JsonKey(name: 'currency_buy_code')
  final String currencyBuyCode;

  @JsonKey(name: 'currency_buy_name')
  final String currencyBuyName;

  @JsonKey(name: 'currency_selling_code')
  final String currencySellingCode;

  @JsonKey(name: 'currency_selling_name')
  final String currencySellingName;

  @JsonKey(name: 'currency_selling_price')
  final String currencySellingPrice;

  @JsonKey(name: 'currency_buy_price')
  final String currencyBuyPrice;

  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;


  @override
  List get props => [
    currencyBuyCode,
    currencyBuyName,
    currencySellingCode,
    currencySellingName,
    currencySellingPrice,
    currencyBuyPrice,
    lastUpdate,
  ];
  factory ItemOfPriceCurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemOfPriceCurrencyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItemOfPriceCurrencyResponseToJson(this);

}
