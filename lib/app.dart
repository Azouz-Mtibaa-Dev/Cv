
import 'package:Portfolio/utils/theme/custom_themes/theme_provider.dart';
import 'package:flutter/material.dart';
// import 'package:cv/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'features/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: Provider.of<ThemeProvider>(context).themeData,
      // theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
