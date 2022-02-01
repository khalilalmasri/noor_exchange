
import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class InitialSplash extends SplashState {}

class SplashLoading extends SplashState {}

class SplashHasData extends SplashState {}
class SplashHasDataWithNoInternet extends SplashState {}



class SplashNoData extends SplashState {
  final String message;

  const SplashNoData(this.message);

  @override
  List<Object> get props => [message];
}

class SplashNoInternetConnection extends SplashState {}

class SplashAdsNoInternetConnection extends SplashState {}

class SplashError extends SplashState {
  final String errorMessage;

  SplashError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

