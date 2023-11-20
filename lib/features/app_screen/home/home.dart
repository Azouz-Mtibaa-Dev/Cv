
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/appbar/section_heading.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/user_info/icon_title_subtitle.dart';
import '../../../common/widgets/user_info/user_icons_description.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      'Home',
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
                  TSectionHeading(
                    title: 'About Me!',
                  ),
                  TSectionHeading(
                    title: '________________________________',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.verify,
                    title: 'Azouz Mtibaa',
                    subTitle:
                        'future Full Stack developer, I am currently a student at the Higher Institute of Technological Studies of Sfax, where I am pursuing in-depth training in computer science. Passionate about creating innovative and functional web applications, I have acquired solid skills in front-end and back-end development',
                  ),

                  ///Education
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSectionHeading(
                    title: 'Education',
                  ),
                  TSectionHeading(
                    title: '________________________________',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.teacher,
                    title: 'diploma in information systems development',
                    subTitle: 'Iset Sfax - 2020/2024',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.courthouse,
                    title: 'secondary school diploma - IT baccalaureate',
                    subTitle: 'Lyceé Majida Boulila Sfax - 2015-2019',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSectionHeading(
                    title: 'Professional Experience',
                  ),
                  TSectionHeading(
                    title: '________________________________',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Initiation Internship',
                    subTitle: 'Bank Nationale Agricole - BNA',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Improvement Internship',
                    subTitle: 'Bank Nationale Agricole - BNA',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSectionHeading(
                    title: 'Clubs Experience',
                  ),
                  TSectionHeading(
                    title: '________________________________',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.add_circle,
                    title: 'Tunivisions ISAMS Club',
                    subTitle:
                        '2020-2021 - Membre 2021-2022 - Membre  2022-2023 - Event VP ',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.add_circle,
                    title: 'Rotaract Sfax Flambeau',
                    subTitle: '2022-2023 - Membre  2023-2024 - Protocol Chief ',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSectionHeading(
                    title: 'Soft Skills Training',
                  ),
                  TSectionHeading(
                    title: '________________________________',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.diagram,
                    title: 'Sponsorship And Negotiation Technique',
                    subTitle: '',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.watch,
                    title: 'Stress And Time Management',
                    subTitle: '',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.note_text,
                    title: 'Public Speaking And Communication Skills',
                    subTitle: '',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.money_recive,
                    title: 'Marketing And Sales Technique',
                    subTitle: '',
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
