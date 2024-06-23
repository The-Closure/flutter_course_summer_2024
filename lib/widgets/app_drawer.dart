import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mohammad"),
            accountEmail: Text("Mohammad@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HOME PAGE"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("CHAT PAGE"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("SETTINGS PAGE"),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("ABOUT PAGE"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOGOUT"),
          ),
        ],
      ),
    );
  }
}
