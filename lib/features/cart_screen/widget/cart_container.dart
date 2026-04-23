import 'package:byeb/core/config/config.dart';
import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 90.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: context.isThemeMod == Brightness.light
                ? Colors.black38
                : Colors.white38,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 90.h,
            child: Image.asset(Asset.navbCart),
          ),
          Gap(w: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("New year special"), Icon(Icons.delete)],
                ),
                Text("color : red  size : 40"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$10000"),
                    Row(
                      children: [
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(child: Text("+")),
                        ),
                        Gap(w: 5.w),
                        Text("2"),
                        Gap(w: 5.w),
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(child: Text("+")),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
