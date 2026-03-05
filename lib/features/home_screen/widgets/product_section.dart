import 'package:byeb/core/path/paths.dart';
import 'package:byeb/shared/widgets/prodact_widget.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180.h,

        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),

          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 20.w),
              child: ProdactWidget(),
            );
          },
        ),
      ),
    );
  }
}
