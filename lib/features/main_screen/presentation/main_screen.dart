import 'package:byeb/core/config/orientation_config.dart';
import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:byeb/features/main_screen/widgets/bottom_navbar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const String name = "/MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = Orientation.portrait == context.orientation;
    return Scaffold(
      body: Row(
        children: [
          if (!isPortrait)
            SizedBox(
              width: 60.w,
              height: 650.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.h,

                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Gap(h: 15.h),

                  SizedBox(
                    width: 35.w,
                    child: BottomNavbar()),
                ],
              ),
            ),
          Expanded(
            child: Stack(
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

                if (isPortrait)
                  Positioned(
                    left: isPortrait ? 10.w : 90.w,
                    right: isPortrait ? 10.w : 90.w,
                    bottom: isPortrait ? 25.h : 45.h,
                    child: BottomNavbar(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
