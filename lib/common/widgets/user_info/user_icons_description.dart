import 'package:Portfolio/common/widgets/user_info/user_circular_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
// import 'package:iconsax/iconsax.dart';

class User extends StatelessWidget {
  const User({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const UserCircularImage(
        image: TImages.azouz,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Azouz Mtibaa',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'Full Stack Developer',
        style:
            Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white),
      ),
      // trailing: IconButton(
      //   onPressed: () {},
      //   icon: const Icon(Iconsax.edit, color: TColors.white),
      // ),
    );
  }
}
