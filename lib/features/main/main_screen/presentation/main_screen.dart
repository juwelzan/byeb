import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:byeb/features/main/main_screen/widgets/bottom_navbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const String name = "MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Asset.navLogoSVG, width: 140.w),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(Asset.appbarUser, width: 27.w),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(Asset.appbarPhone, width: 27.w),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(Asset.appbarBell, width: 27.w),
          ),
          Gap(w: 5.w),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Consumer<NavbarController>(
              builder: (context, state, child) {
                return PageView.builder(

                  itemCount: state.page.length,
                  onPageChanged: (value) => state.copyWith(index: value),
                  controller: state.pageController,
                  itemBuilder: (context, index) {
                    return state.page[index];
                  },
                );
              },
            ),
          ),

          Positioned(
            left: 10.w,
            right: 10.w,
            bottom: 25.h,
            child: BottomNavbar(),
          ),
        ],
      ),
    );
  }
}
