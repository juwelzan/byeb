part of 'splash_cubit.dart';

enum Splash { start, end }

@immutable
class SplashState {
  final Splash splash;

 const SplashState({this.splash = Splash.start});

  SplashState copyWith({Splash? splash}) {
    return SplashState(splash: splash ?? this.splash);
  }
}
