import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/package/gap/sliver_gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:byeb/features/home_screen/widgets/ads_banner.dart';
import 'package:byeb/features/home_screen/widgets/all_categories.dart';
import 'package:byeb/features/home_screen/widgets/product_section.dart';
import 'package:byeb/features/home_screen/widgets/search_field.dart';
import 'package:byeb/features/home_screen/widgets/title_name.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BannerController>().autoScrollBanner();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: false,
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(Asset.navLogoSVG, width: 140.w),
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
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverGap(h: 10.h),
          SearchField(),

          SliverGap(h: 10.h),
          SliverToBoxAdapter(
            child: SizedBox(height: 180.h, child: AdsBanner()),
          ),
          SliverGap(h: 10.h),
          TitleName(),
          SliverGap(h: 10.h),

          AllCategories(),

          SliverGap(h: 10.h),
          TitleName(),
          ProductSection(),
          SliverGap(h: 10.h),
          TitleName(),
          ProductSection(),
          SliverGap(h: 10.h),
          TitleName(),
          ProductSection(),
          SliverGap(h: 200),
        ],
      ),
    );
  }
}
