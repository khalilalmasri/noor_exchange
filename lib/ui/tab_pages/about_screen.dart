import 'package:alnoor/core/bloc/splash/spalsh_event.dart';
import 'package:alnoor/core/bloc/splash/spalsh_state.dart';
import 'package:alnoor/core/bloc/splash/splash_bloc.dart';
import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:alnoor/shared/widget/error/no_internet_widget.dart';
import 'package:alnoor/shared/widget/home/we.dart';
import 'package:alnoor/shared/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutUsScreen extends StatefulWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      if (state is LoadSplashData) {
        return _getPageContent();
      } else if (state is SplashHasData) {
        return _getPageContent();
      } else if (state is SplashLoading) {
        return _getPageContent();
      } else if (state is SplashNoInternetConnection) {
        return NoInternetWidget(
          message: StringPlatform.no_internet,
          onPressed: () {
            context.read<SplashBloc>().add(LoadSplashData());
          },
        );
      } else if (state is SplashAdsNoInternetConnection) {
        return _getPageContent();
      } else
        return Text('no bloc');
    });
  }

  Widget _getPageContent() {
    return AboutUsWidget(
      manager_phone:
          ApiPriceCurrencyConstant.aboutUs!.value.phoneManager == '963966622284'
              ? StringPlatform.phone
              : ApiPriceCurrencyConstant.aboutUs!.value.phoneManager,
      assistant_phone: ApiPriceCurrencyConstant.aboutUs!.value.phoneAssistant == '905386643504'?StringPlatform.phonetrans
      :ApiPriceCurrencyConstant.aboutUs!.value.phoneAssistant,
      website: ApiPriceCurrencyConstant.aboutUs!.value.website,
      facebook: ApiPriceCurrencyConstant.aboutUs!.value.facebook,
      our_vision: ApiPriceCurrencyConstant.aboutUs!.value.ourVision,
      company_name: ApiPriceCurrencyConstant.aboutUs!.value.name,
      our_message: ApiPriceCurrencyConstant.aboutUs!.value.ourMessage,
      note: ApiPriceCurrencyConstant.aboutUs!.value.desc,
    );
  }
}
