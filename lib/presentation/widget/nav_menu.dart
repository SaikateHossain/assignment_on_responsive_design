
import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Products',
                style: TextStyle(fontSize: 25),
              ),
              tileColor: Colors.pink,
              textColor: Colors.white,
            ),
            ListTile(
              title: Text(
                'Stocks',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              title: Text(
                'Bills',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
