import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavbarController>(
      builder: (context, state, child) {
        return Container(
          height: 65.h,
          padding: EdgeInsets.all(5.f),
          decoration: BoxDecoration(
            color: context.theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(18.r),
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 30)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  context.read<NavbarController>().nextScreen(0);
                },
                icon: Image.asset(
                  Asset.navbHome,
                  width: 30.w,
                  color: state.pageIndex == 0
                      ? context.theme.primaryColor
                      : Colors.black45,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<NavbarController>().nextScreen(1);
                },
                icon: Image.asset(
                  Asset.navbCategory,
                  width: 30.w,
                  color: state.pageIndex == 1
                      ? context.theme.primaryColor
                      : Colors.black45,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<NavbarController>().nextScreen(2);
                },
                icon: Image.asset(
                  Asset.navbCart,
                  height: 40.h,
                  color: state.pageIndex == 2
                      ? context.theme.primaryColor
                      : Colors.black45,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<NavbarController>().nextScreen(3);
                },
                icon: Image.asset(
                  Asset.navbWish,
                  height: 34.h,
                  color: state.pageIndex == 3
                      ? context.theme.primaryColor
                      : Colors.black45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
