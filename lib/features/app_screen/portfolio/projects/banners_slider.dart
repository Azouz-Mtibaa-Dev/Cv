
import 'package:Portfolio/features/app_screen/portfolio/projects/rounded_banner.dart';
import 'package:Portfolio/features/app_screen/portfolio/projects/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TProjectsSlider extends StatelessWidget {
  const TProjectsSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProjectController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controller.updatePageIndicator(index);
            },
          ),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.darkGrey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
