import 'package:flutter/material.dart';

class SideBarMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const SideBarMenuItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFF83A0EF),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF99A2BB),
          ),
        ),
      ),
      onTap: () => {},
    );
  }
}
