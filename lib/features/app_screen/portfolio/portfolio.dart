
import 'package:Portfolio/features/app_screen/portfolio/projects/banners_slider.dart';
import 'package:Portfolio/features/app_screen/portfolio/skills/skills.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/appbar/section_heading.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/user_info/user_icons_description.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SkillsAndProjectsScreen extends StatelessWidget {
  const SkillsAndProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  TAppBar(
                    title: Text(
                      'Portfolio',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  // User Profile Card
                  const User(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: 'Skills'),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSkills(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSectionHeading(title: 'Projects'),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TProjectsSlider(
                    banners: [
                      TImages.banner1,
                      TImages.banner2,
                      TImages.banner3
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
