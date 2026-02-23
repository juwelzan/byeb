import 'package:byeb/core/path/paths.dart';
import 'package:byeb/core/themes/app_colors.dart';
import 'package:byeb/core/widget/png_logo.dart';
import 'package:byeb/features/splash/logic/cubit/splash_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String name = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.splash == Splash.end) {
            print("object");
          }
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: Center(child: PngLogo(width: 130.hw(max: 130, min: 110))),
            ),
            Positioned(
              bottom: 30.h,
              left: 10.w,
              right: 10.w,

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    Asset.lottieLoder,
                    width: 70.hw(),
                    height: 70.hw(),
                    delegates: LottieDelegates(
                      values: [
                        ValueDelegate.color(const [
                          "**",
                        ], value: AppColors.darkPrimary),
                      ],
                    ),
                  ),
                  Text(
                    "version 1.0",
                    style: TextStyle(
                      fontSize: 13.hw(min: 13, max: 13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
