import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/appbar/section_heading.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/user_info/icon_title_subtitle.dart';
import '../../../common/widgets/user_info/user_icons_description.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/theme/custom_themes/theme_provider.dart';
import '../../../utils/theme/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                      'Profile',
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
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Contact Details',
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    icon: TImages.gg,
                    title: 'Email',
                    subTitle: 'azouzizoumtibaa@gmail.com',
                    onTap: () => _sendEmail(),
                  ),
                  TSettingsMenuTile(
                    icon: TImages.fb,
                    title: 'Facebook',
                    subTitle: 'Azouz Mtibaa',
                    onTap: () => _launchFacebook(),
                  ),
                  TSettingsMenuTile(
                    icon: TImages.map,
                    title: 'Location',
                    subTitle: 'Rte Mahdia Klm 5',
                    onTap: () => _launchMap(),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.call,
                    title: 'Phone Number',
                    subTitle: '44 37 44 37',
                    onTap: () => callNumber(),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSectionHeading(
                    title: 'App Setting',
                  ),
                  // TSettingsMenuTile(
                  //   icon: Iconsax.location,
                  //   title: 'Geolocation',
                  //   subTitle: 'Set recommendation based on location',
                  //   trailing: Switch(value: true, onChanged: (value) {}),
                  // ),
                  TSettingsMenuTile(
                    icon: Iconsax.moon,
                    title: 'Theme Mode',
                    subTitle: 'Choose your theme',
                    trailing: Switch(
                      value: Provider.of<ThemeProvider>(context).themeData ==
                          TAppTheme.darkTheme,
                      onChanged: (value) {
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme();
                      },
                    ),
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

Future<void> _launchFacebook() async {
  final Uri _urlFac = Uri.parse('https://www.facebook.com/azouz.mtibaa.9/');
  if (!await launchUrl(_urlFac)) {
    throw Exception('Could not launch $_urlFac');
  }
}

void callNumber() async {
  Uri dialNumber = Uri(scheme: 'tel', path: '++21644374437');
  if (!await launchUrl(dialNumber)) {
    throw Exception('Could not launch $dialNumber');
  }
}

void _sendEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'azouzzizoumtibaa@gmail.com',
    queryParameters: {'subject': 'Demande Projet'},
  );

  if (!await launchUrl(_emailLaunchUri)) {
    throw 'Could not launch $_emailLaunchUri';
  }

  await launchUrl(_emailLaunchUri);
}

void _launchMap() async {
  final Uri _mapLaunchUri =
      Uri.parse('https://maps.app.goo.gl/vqA1C31RMojmMxiJ8');
  if (!await launchUrl(_mapLaunchUri)) {
    throw Exception('Could not launch $_mapLaunchUri');
  }
}
