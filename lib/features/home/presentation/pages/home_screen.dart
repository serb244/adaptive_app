import 'package:adaptive_app/features/home/presentation/widgets/desktop/home_desktop_widget.dart';
import 'package:adaptive_app/features/home/presentation/widgets/tablet/home_tablet_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/adaptive_widget.dart';
import '../widgets/mobile/home_mobile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveWidget(
      mobile: HomeMobileWidget(),
      tablet: HomeTabletWidget(),
      desktop: HomeDesktopWidget(),
    );
  }
}
