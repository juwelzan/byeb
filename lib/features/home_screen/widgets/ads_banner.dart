import 'package:byeb/core/config/orientation_config.dart';
import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:provider/provider.dart';

class AdsBanner extends StatelessWidget {
  const AdsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = context.orientation == Orientation.portrait;
    return Column(
      children: [
        SizedBox(
          height: isPortrait ? 150.h : 130.w,
          width: isPortrait ? double.infinity :300.w,
          child: PageView.builder(
            controller: context.read<BannerController>().pageController,
            onPageChanged: (value) =>
                context.read<BannerController>().update(value),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(isPortrait ? 15.r : 9.w),
                  ),
                ),
              );
            },
          ),
        ),
        Gap(h: 5.h),
        SizedBox(
          height: isPortrait ? 15.h : 35.h,
          child: Consumer<BannerController>(
            builder: (context, state, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  bool isActiv = index == state.index;

                  return AnimatedContainer(
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 1000),
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    width: isActiv ? (isPortrait ? 25.w : 20.w) : (isPortrait ? 12.w : 6.w),
                    height: isPortrait ? 11.h : 25.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: isActiv
                            ? context.theme.primaryColor
                            : context.textTheme.bodySmall!.color!,
                      ),

                      color: isActiv
                          ? context.theme.primaryColor
                          : Colors.transparent,
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
