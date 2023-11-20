
import 'package:Portfolio/utils/constants/colors.dart';
import 'package:Portfolio/utils/constants/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/app_screen/home/home.dart';
import 'features/app_screen/portfolio/portfolio.dart';
import 'features/app_screen/profile/profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.selectedIndex.value = index;
        },
        children: controller.screens,
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.ease,
            );
          },
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Profile'),
            NavigationDestination(
                icon: Icon(Iconsax.scroll), label: 'Portfolio'),
            // NavigationDestination(
            //     icon: Icon(Iconsax.brifecase_cross), label: 'Projects'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'About'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final List<Widget> screens = [
    const HomeScreen(),
    const SkillsAndProjectsScreen(),
    // Container(color: Colors.orange),
    const SettingsScreen(),
  ];

  final PageController pageController = PageController(initialPage: 0);
}
