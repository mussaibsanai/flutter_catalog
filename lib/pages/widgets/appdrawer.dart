import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  final imageurl =
      "https://images.unsplash.com/photo-1499714608240-22fc6ad53fb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // decoration: BoxDecoration(color: Colors.red),
                  accountName: const Text("Hello"),
                  accountEmail: const Text("mussaib@mail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  )),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
              ),
              title: Text(
                "About us",
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
