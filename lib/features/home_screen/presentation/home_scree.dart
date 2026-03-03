import 'package:byeb/core/config/orientation_config.dart';
import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:byeb/features/home_screen/widgets/ads_banner.dart';
import 'package:byeb/features/home_screen/widgets/all_categories.dart';
import 'package:flutter_svg/svg.dart';
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
    bool isPortrait = context.orientation == Orientation.portrait;
    return Scaffold(
      appBar: isPortrait
          ? AppBar(
              automaticallyImplyActions: false,
              automaticallyImplyLeading: false,
              title: SvgPicture.asset(
                Asset.navLogoSVG,
                width: isPortrait ? 140.w : 80.w,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    Asset.appbarUser,
                    width: 27.w,
                    color: context.textTheme.bodyLarge!.color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    Asset.appbarPhone,
                    width: 27.w,
                    color: context.textTheme.bodyLarge!.color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    Asset.appbarBell,
                    width: 27.w,
                    color: context.textTheme.bodyLarge!.color,
                  ),
                ),
                Gap(w: 5.w),
              ],
            )
          : null,
      body: ListView(
        padding: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: isPortrait ? 0 : 70.h,
              left: isPortrait ? 0 : 70.w,
              right: isPortrait ? 0 : 70.w,
            ),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: _decoration(isPortrait),
                enabledBorder: _decoration(isPortrait),
                errorBorder: _decoration(isPortrait),
                border: _decoration(isPortrait),
                filled: true,
              ),
              style: TextStyle(fontSize: isPortrait ? 15.f : 8.w),
            ),
          ),
          Gap(h: 30.h),
          SizedBox(height: isPortrait ? 180.h : 200.w, child: AdsBanner()),
          Gap(h: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("All Categories"),
              TextButton(onPressed: () {}, child: Text("See All")),
            ],
          ),

          SizedBox(height: isPortrait ? 100.h : 90.w, child: AllCategories()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("All Categories"),
              TextButton(onPressed: () {}, child: Text("See All")),
            ],
          ),
          SizedBox(
            height: isPortrait ? 160.h : 120.w,
            width: 100,
            child: ListView.separated(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => Gap(w: 10.w),
              itemBuilder: (context, index) {
                return Container(
                  height: double.maxFinite,
                  width: isPortrait ? 150.w : 90.w,
                  decoration: BoxDecoration(
                    color: context.theme.secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(8.0.r),
                        child: Image.asset(
                          Asset.navbCart,
                          height: isPortrait ? 80.h : 60.w,
                        ),
                      ),
                      Gap(h: 10.h),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.w, right: 5.w),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                "sdfklghsdljgv sdjfhjdsf sdjfghjdsf sdhfgdsfg",
                                style: context.textTheme.titleLarge,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "data",
                                    style: context.textTheme.titleMedium,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(Asset.starPNG, width: 18.w),
                                      Gap(w: 5.w),
                                      Text(
                                        "4.5",
                                        style: context.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Image.asset(Asset.hardFeelPNG, width: 20.w),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Gap(h: 200.h),
        ],
      ),
    );
  }
}

InputBorder _decoration(bool isPortrait) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(isPortrait ? 15.r : 6.w),
  borderSide: BorderSide.none,
);
