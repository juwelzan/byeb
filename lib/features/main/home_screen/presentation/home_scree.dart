import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:byeb/features/main/home_screen/widgets/ads_banner.dart';
import 'package:byeb/features/main/home_screen/widgets/all_categories.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<BannerController>().autoScrollBanner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
      children: [
        TextField(
          decoration: InputDecoration(
            focusedBorder: _decoration,
            enabledBorder: _decoration,
            errorBorder: _decoration,
            border: _decoration,
            filled: true,
          ),
          style: TextStyle(fontSize: 15.f),
        ),
        Gap(h: 30.h),
        SizedBox(height: 180.h, child: AdsBanner()),
        Gap(h: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("All Categories"),
            TextButton(onPressed: (){}, child: Text("See All"))
          ],
        ),
        SizedBox(
          height: 100.h,
          child: AllCategories(),
        )
      ],
    );
  }
}

InputBorder get _decoration => OutlineInputBorder(
  borderRadius: BorderRadius.circular(15.r),
  borderSide: BorderSide.none,
);
