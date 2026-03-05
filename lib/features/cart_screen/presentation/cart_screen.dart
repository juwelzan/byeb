import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.w,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                Asset.backPNG,
                color: context.theme.primaryColorDark,
                width: 30.w,
              ),
            ),
            Text(
              "Cart",
              style: context.textTheme.headlineLarge?.copyWith(fontSize: 20.w),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: CustomScrollView(
          slivers: [
            SliverList.separated(
              separatorBuilder: (context, index) => Gap(h: 20),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  height: 90.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
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
                              children: [
                                Text("New year special"),
                                Icon(Icons.delete),
                              ],
                            ),
                            Text("color : red  size : 40"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$10000"),
                                Row(
                                  children: [
                                    Container(
                                      height: 25.w,
                                      width: 25.w,
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
                                      height: 25.w,
                                      width: 25.w,
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
