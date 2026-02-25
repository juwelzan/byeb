import 'package:byeb/core/package/gap/gap.dart';
import 'package:byeb/core/path/paths.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthWidget extends StatelessWidget {
  final String title, subTitle;
  final double? titleSize, subTitleSize, logoSize;
  const AuthWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleSize,
    this.subTitleSize,
    this.logoSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: [
        SvgPicture.asset(Asset.logoSVG, width: logoSize ?? 130.w),
        Gap(h: 20.h),
        Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(fontSize: titleSize),
        ),
        Text(
          subTitle,
          style: context.textTheme.bodySmall?.copyWith(fontSize: subTitleSize),
        ),
      ],
    );
  }
}
