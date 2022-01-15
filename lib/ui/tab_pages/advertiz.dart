import 'package:alnoor/core/bloc/splash/spalsh_event.dart';
import 'package:alnoor/core/bloc/splash/splash_bloc.dart';
import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/component/loading_indecator.dart';
import 'package:alnoor/shared/widget/error/error_image.dart';
import 'package:alnoor/shared/widget/error/no_internet_widget.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import '../../../shared/words.dart';
import '../../core/bloc/splash/spalsh_state.dart';

class AdScreen extends StatefulWidget {
  AdScreen({Key? key}) : super(key: key);

  @override
  _AdScreenState createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      if (state is LoadSplashData) {
        return _getPageContent();
      } else if (state is SplashHasData) {
        return _getPageContent();
      } else if (state is SplashLoading) {
        return _getPageContent();
      } else if (state is SplashAdsNoInternetConnection) {
        return
          NoInternetWidget(
            message: StringPlatform.no_internet,
            onPressed: () {
              context.read<SplashBloc>().add(LoadAdsData());
            },
          );
      } else if (state is SplashNoInternetConnection) {
        return NoInternetWidget(
          message: StringPlatform.no_internet,
          onPressed: () {
            context.read<SplashBloc>().add(LoadAdsData());
          },
        );
      }else
        return Text('no bloc');
    });

  }

  Widget _getPageContent(){
    List<Widget> ads = [];

    ApiPriceCurrencyConstant.AdsResponse.map((e) {
      ads.add(
        Container(
          width: 200,
          margin: PaddingPlatform.twenty,
          child: GestureDetector(
            onTap: () {},
            child:     CachedNetworkImage(
              // height: double.infinity,
              // width: Sizes.width(context) - 20,
              fit: BoxFit.fitHeight,
              imageUrl:e.image.src ,
              placeholder: (context, url) => LoadingIndicator(),
              errorWidget: (context, url, error) => ErrorImage(),
            ),),
        ),
      );
    }).toList();
    // ads.insert(0, PhoneContactUsWidget());
    // ads.insert(
    //     ads.length,
    //     AdressBar(
    //       adress: StringPlatform.Title,
    //       phone_number: StringPlatform.phone,
    //     ));
    return Container(
      decoration: BoxDecoration(
        color: ColorPlatform.colorContainerBackground,
      ),
      child: ListView(
        children: [
          PhoneContactUsWidget(),
          Container(
            //main container
              decoration: BoxDecoration(
                color: ColorPlatform.colorContainerBackground,
              ),
              height: 500,
              child: RefreshIndicator(
                color: ColorPlatform.golden,
                onRefresh: () async {
                  context.read<SplashBloc>().add(LoadAdsData());
                },
                child: ListView(
                    children: ads.map((e) => e).toList()),
              )),
          AdressBar(),
        ],
      ),
    );


  }
}
