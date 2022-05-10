import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: const [
          DrawerHeader(
            child: Text("Invitation Management System"),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          // UserAccountsDrawerHeader(
          //     accountName: Text("Sarath Molathoti"),
          //     accountEmail: Text("sarathmolathoti@gmail.com"),
          //     currentAccountPicture: CircleAvatar(
          //       backgroundImage: NetworkImage("url"),
          //     ),
          // ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            // subtitle: Text("Sub heading"),
            // trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Sync Attendance"),
            // subtitle: Text("Sub heading"),
            // trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Text("Sync Suspicious Activities"),
            // subtitle: Text("Sub heading"),
            // trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("Profile"),
            // subtitle: Text("Sub heading"),
            // trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            // subtitle: Text("Sub heading"),
            // trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
