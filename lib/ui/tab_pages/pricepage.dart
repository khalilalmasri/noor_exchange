import 'package:alnoor/shared/widget/error/no_internet_widget.dart';
import 'package:alnoor/ui/tab_pages/calculaterpage.dart';
import 'package:alnoor/core/bloc/splash/bloc.dart';
import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:alnoor/shared/widget/home/price_currency.dart';
import 'package:alnoor/shared/widget/home/refreshwe.dart';
import 'package:alnoor/shared/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import '../../shared/them.dart';
import 'package:alnoor/main.dart';

class PricePage extends StatefulWidget {
  PricePage({Key? key}) : super(key: key);

  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  void initState() {
    // context.read<SplashBloc>().add(LoadSplashData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      if (state is LoadSplashData) {
        return _pageContent();
      } else if (state is SplashHasData) {
        return _pageContent();
      } else if (state is SplashLoading) {
        return _pageContent();
      } else if (state is SplashNoInternetConnection) {
        return NoInternetWidget(
          message: StringPlatform.no_internet,
          onPressed: () {
            context.read<SplashBloc>().add(LoadPriceData());
          },
        );
      } else if (state is SplashAdsNoInternetConnection) {
        return _pageContent();
      } else
        return Text('no bloc');
    });
  }

  Widget _pageContent() {
    List<Widget> listPrice = [];

    ApiPriceCurrencyConstant.pricesCurrencyResponse.map((e) {
      listPrice.add(PriceCurrency(
        name_code_buy: e.currencyBuyCode,
        name_code_sale: e.currencySellingCode,
        name_price_buy: e.currencyBuyName,
        name_price_sale: e.currencySellingName,
        price_sale: double.parse(e.currencySellingPrice),
        price_buy: double.parse(e.currencyBuyPrice),
        title: '',
      ));
    }).toList();
    listPrice.insert(0, PhoneContactUsWidget());
    listPrice.insert(listPrice.length, AdressBar());
    listPrice.insert(
        listPrice.length,
        Refreshwi(
          LastUpdateDate:
              ApiPriceCurrencyConstant.pricesCurrencyResponse[0].lastUpdateDate,
          LastUpdateTime:
              ApiPriceCurrencyConstant.pricesCurrencyResponse[0].lastUpdateTime,
        ));
    return Container(
        //main container
        decoration: BoxDecoration(
          color: ColorPlatform.colorContainerBackground,
        ),
        width: double.infinity,
        padding: PaddingPlatform.ten,
        child: RefreshIndicator(
          color: ColorPlatform.golden,
          onRefresh: () async {
            context.read<SplashBloc>().add(LoadPriceData());
          },
          child: ListView(children: listPrice.map((e) => e).toList()),
        ));
  }
}
