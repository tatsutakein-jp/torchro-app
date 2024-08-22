import 'package:core_designsystem/src/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';

final class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => Image.asset(
        Assets.images.logo.path,
        package: Assets.package,
        width: width,
        height: height,
      );
}
