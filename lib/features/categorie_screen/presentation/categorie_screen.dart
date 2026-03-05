import 'package:byeb/core/path/paths.dart';
import 'package:byeb/features/main_screen/logic/nav_bar/navbar_controller.dart';
import 'package:byeb/shared/widgets/categorie_widget.dart';
import 'package:provider/provider.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                context.read<NavbarController>().nextScreen(0);
              },
              icon: Image.asset(
                Asset.backPNG,
                color: context.theme.primaryColorDark,
              ),
            ),
            Text("Categories", style: context.textTheme.headlineLarge),
          ],
        ),
        leadingWidth: 200.w,
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 20.h),
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return CategorieWidget();
        },
      ),
    );
  }
}
