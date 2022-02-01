import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => [];
}

class LoadSplashData extends SplashEvent {}

class LoadPriceData extends SplashEvent {}

class LoadAboutData extends SplashEvent {}

class LoadAdsData extends SplashEvent {}
