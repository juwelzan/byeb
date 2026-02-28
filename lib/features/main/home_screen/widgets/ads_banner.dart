import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main/home_screen/logic/ads_banner/banner_controller.dart';
import 'package:provider/provider.dart';

class AdsBanner extends StatelessWidget {
  const AdsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.h,
          width: double.infinity,
          child: PageView.builder(
            controller: context.read<BannerController>().pageController,
            onPageChanged: (value) =>
                context.read<BannerController>().update(value),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Container(color: Colors.amber),
              );
            },
          ),
        ),
        Gap(h: 5.h,),
        SizedBox(
          height: 15.h,
          child: Consumer<BannerController>(
            builder: (context, state, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  bool isActiv = index == state.index;

                  return AnimatedContainer(
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    width: isActiv ? 25.w : 12.w,
                    height: 11.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isActiv ? Colors.amber : Colors.black,
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
