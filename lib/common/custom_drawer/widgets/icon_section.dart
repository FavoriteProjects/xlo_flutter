import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../blocs/drawer_bloc.dart';
import 'icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _drawerBloc = Provider.of<DrawerBloc>(context);

    void _setPage(int page) {
      Navigator.of(context).pop();
      _drawerBloc.setPage(page);
    }

    return StreamBuilder<Object>(
      stream: _drawerBloc.outPage,
      builder: (context, snapshot) {
        return Column(
          children: <Widget>[
            IconTile(
              label: 'Anúncios',
              iconData: Icons.list,
              highlighted: snapshot.data == 0,
              onTap: () {
                _setPage(0);
              },
            ),
            IconTile(
              label: 'Inserir Anúncio',
              iconData: Icons.edit,
              highlighted: snapshot.data == 1,
              onTap: () {
                _setPage(1);
              },
            ),
            IconTile(
              label: 'Chat',
              iconData: Icons.chat,
              highlighted: snapshot.data == 2,
              onTap: () {
                _setPage(2);
              },
            ),
            IconTile(
              label: 'Favoritos',
              iconData: Icons.favorite,
              highlighted: snapshot.data == 3,
              onTap: () {
                _setPage(3);
              },
            ),
            IconTile(
              label: 'Minha conta',
              iconData: Icons.person,
              highlighted: snapshot.data == 4,
              onTap: () {
                _setPage(4);
              },
            ),
          ],
        );
      },
    );
  }
}
