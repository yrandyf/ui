import '/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Text(
                  'UTrip',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.10,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'Finest Personal Travel Planner!',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                    color: Colors.blueGrey,
                  ),
                ),
                Divider(),
                Text(
                  'UserName',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () =>
                {Navigator.of(context).pushNamed(MainScreen.routeName)},
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Apperences'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
