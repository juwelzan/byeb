import 'package:byeb/core/path/paths.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active)),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 10.w,
            right: 10.w,
            bottom: 25.h,
            child: Container(
              height: 65.h,
              padding: EdgeInsets.all(5.f),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
