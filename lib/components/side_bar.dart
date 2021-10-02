import 'package:flutter/material.dart';

import 'sidebar_menu_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 00.0, horizontal: 30.0),
        decoration: BoxDecoration(
          color: Color(0xFF031956),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                          color: Color(0xFF4B67B7),
                        )),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 20.0,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      tooltip: 'Back to menu',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SideBarMenuItem(icon: Icons.home_outlined, text: 'HOME'),
                  SideBarMenuItem(
                      icon: Icons.dashboard_outlined, text: 'DASHBOARD'),
                  SideBarMenuItem(
                      icon: Icons.account_box_outlined, text: 'PROFILE'),
                  SideBarMenuItem(
                      icon: Icons.analytics_outlined, text: 'ANALYTICS'),
                  SideBarMenuItem(icon: Icons.settings, text: 'SETTINGS'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                    child: Text(
                      'Good',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8BA7EE),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                    child: Text(
                      'Consistency',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
