import 'package:byeb/core/path/paths.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("All Categories", style: context.textTheme.headlineLarge),
            TextButton(
              onPressed: () {},
              child: Text("See All", style: context.textTheme.headlineMedium),
            ),
          ],
        ),
      ),
    );
  }
}
