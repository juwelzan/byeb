import 'dart:async';

import 'package:byeb/core/path/paths.dart';

class BannerController with ChangeNotifier {
  int bannerIndex = 0;
  int index = 0;
  PageController pageController = PageController();

  List<Widget> banner = <Widget>[];

  Timer? timer;
  void autoScrollBanner() {
    timer?.cancel();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      bannerIndex++;
      if (!pageController.hasClients) return;

      pageController.animateToPage(
        bannerIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      index = (bannerIndex % 4);

      print("$bannerIndex name");
      notifyListeners();
    });
  }

  void update(int inde) {
    bannerIndex = inde;

    index = (inde % 4);

    notifyListeners();
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
    notifyListeners();
  }
}
