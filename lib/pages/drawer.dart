import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'Song',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.album,
              text: 'Album',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.collections,
              text: 'Gallery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Sadety Rahmadhani'),
      accountEmail: Text('sadestyrahmadhani012@gmail.com'),
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/user.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
