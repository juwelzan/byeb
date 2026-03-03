import 'package:byeb/core/config/orientation_config.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = Orientation.portrait == context.orientation;
    return Consumer<NavbarController>(
      builder: (context, state, child) {
        return Container(
          height: isPortrait ? 65.h : 116.w,
          padding: EdgeInsets.all(isPortrait ? 10.f : 4.f),
          decoration: BoxDecoration(
            color: context.theme.primaryColorDark,
            borderRadius: BorderRadius.circular(isPortrait ? 18.r : 6.w),
          ),
          child: isPortrait ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<NavbarController>().nextScreen(0);
                },
                child: Image.asset(
                  Asset.navbHome,
                  height: isPortrait ? 35.h : 18.w,
                  color: state.pageIndex == 0
                      ? context.theme.primaryColor
                      : context.theme.primaryColorLight,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<NavbarController>().nextScreen(1);
                },
                child: Image.asset(
                  Asset.navbCategory,
                  height: isPortrait ? 35.h : 18.w,
                  color: state.pageIndex == 1
                      ? context.theme.primaryColor
                      : context.theme.primaryColorLight,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<NavbarController>().nextScreen(2);
                },
                child: Image.asset(
                  Asset.navbCart,
                  height: isPortrait ? 35.h : 18.w,
                  color: state.pageIndex == 2
                      ? context.theme.primaryColor
                      : context.theme.primaryColorLight,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<NavbarController>().nextScreen(3);
                },
                child: Image.asset(
                  Asset.navbWish,
                  height: isPortrait ? 35.h : 18.w,
                  color: state.pageIndex == 3
                      ? context.theme.primaryColor
                      : context.theme.primaryColorLight,
                ),
              ),
            ],
          ) :  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<NavbarController>().nextScreen(0);
                      },
                      child: Image.asset(
                        Asset.navbHome,
                        height: isPortrait ? 35.h : 18.w,
                        color: state.pageIndex == 0
                            ? context.theme.primaryColor
                            : context.theme.primaryColorLight,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<NavbarController>().nextScreen(1);
                      },
                      child: Image.asset(
                        Asset.navbCategory,
                        height: isPortrait ? 35.h : 18.w,
                        color: state.pageIndex == 1
                            ? context.theme.primaryColor
                            : context.theme.primaryColorLight,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<NavbarController>().nextScreen(2);
                      },
                      child: Image.asset(
                        Asset.navbCart,
                        height: isPortrait ? 35.h : 18.w,
                        color: state.pageIndex == 2
                            ? context.theme.primaryColor
                            : context.theme.primaryColorLight,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<NavbarController>().nextScreen(3);
                      },
                      child: Image.asset(
                        Asset.navbWish,
                        height: isPortrait ? 35.h : 18.w,
                        color: state.pageIndex == 3
                            ? context.theme.primaryColor
                            : context.theme.primaryColorLight,
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
