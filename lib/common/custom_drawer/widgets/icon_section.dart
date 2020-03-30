import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/widgets/icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconTile(
          label: 'Anúncios',
          iconData: Icons.list,
          highlighted: true,
          onTap: () {},
        ),
        IconTile(
          label: 'Inserir Anúncio',
          iconData: Icons.list,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Chat',
          iconData: Icons.list,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Favoritos',
          iconData: Icons.list,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Minha conta',
          iconData: Icons.list,
          highlighted: false,
          onTap: () {},
        ),
      ],
    );
  }
}
