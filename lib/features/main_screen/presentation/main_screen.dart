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
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Consumer<NavbarController>(
              builder: (context, state, child) {
                return PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
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
