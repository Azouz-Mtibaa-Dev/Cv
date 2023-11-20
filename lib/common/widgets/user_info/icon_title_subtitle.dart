import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final dynamic icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    // Vérifier le type de l'icône
    if (icon is IconData) {
      // Utiliser une icône prédéfinie
      iconWidget = Icon(icon, size: 28, color: TColors.primary);
    } else if (icon is String) {
      // Utiliser une image SVG depuis un fichier
      iconWidget =
          SvgPicture.asset(icon, width: 28, height: 28, color: TColors.primary);
    } else {
      throw ArgumentError(
          'L\'icône doit être soit IconData, soit String (chemin SVG).');
    }

    return ListTile(
      leading: iconWidget,
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
