import 'package:flutter/material.dart';

import 'list_skills.dart';

class TSkills extends StatelessWidget {
  const TSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 1, // Change the itemCount to the desired number of items
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return const Row(
            children: [
              TVerticalImageText(
                icon: 'assets/framework/python.svg',
                title: 'Django',
              ),
              TVerticalImageText(
                icon: 'assets/framework/js.svg',
                title: 'Node JS',
              ),
              TVerticalImageText(
                icon: 'assets/framework/java-script.svg',
                title: 'JavaScript',
              ),
              TVerticalImageText(
                icon: 'assets/framework/html-5.svg',
                title: 'HTML 5',
              ),
              TVerticalImageText(
                icon: 'assets/framework/bootsrap.svg',
                title: 'Bootsrap',
              ),
              TVerticalImageText(
                icon: 'assets/framework/android.svg',
                title: 'Android',
              ),
              TVerticalImageText(
                icon: 'assets/framework/figma.svg',
                title: 'Figma',
              ),
              TVerticalImageText(
                icon: 'assets/framework/photoshop.svg',
                title: 'Photoshop',
              ),
              TVerticalImageText(
                icon: 'assets/framework/illustrator.svg',
                title: 'Illistrator',
              ),
            ],
          );
        },
      ),
    );
  }
}
