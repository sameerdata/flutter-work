// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://yt3.ggpht.com/ytc/AMLnZu80tgSsS3pQJrMA3jjGm4MCkf8ZHl0emfrDYQN3Hw=s900-c-k-c0x00ffffff-no-rj";

    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Muhammad Sameer"),
                accountEmail: Text("sameer@gmail.com"),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white,
                  )))
        ],
      ),
    ));
  }
}
