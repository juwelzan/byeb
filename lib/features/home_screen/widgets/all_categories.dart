import 'package:byeb/core/path/paths.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: .horizontal,
      itemBuilder: (context, index) {
        return Center(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10.r),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: context.theme.secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Image.asset(
                    Asset.navbWish,
                    width: 45.w,
                    color: context.theme.primaryColor,
                  ),
                ),
              ),
              Text("data"),
            ],
          ),
        );
      },
    );
  }
}
