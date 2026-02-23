import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> startSplash() async {
    await Future.delayed(Duration(seconds: 5));
    emit(state.copyWith(splash: Splash.end));
  }
}
