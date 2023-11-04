import 'package:adaptive_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeContextScreen extends StatelessWidget {
  const HomeContextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: context.responsive<Widget>(
        const HomeMobileWidget(),
        mobile: const HomeMobileWidget(),
        tablet: const HomeTabletWidget(), // medium
        desktop: const HomeDesktopWidget(), // large
      ),
    );
  }
}
