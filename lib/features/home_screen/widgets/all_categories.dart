import 'package:byeb/core/path/paths.dart';
import 'package:byeb/shared/widgets/categorie_widget.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
          itemCount: 20,
          physics: BouncingScrollPhysics(),
          scrollDirection: .horizontal,
          itemBuilder: (context, index) {
            return CategorieWidget();
          },
        ),
      ),
    );
  }
}
