import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
 
  void onPressed() => print("Pressed");
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('ios/80.png'),
      ),
      actions: [IconButton(icon: Icon(Icons.cake), onPressed: onPressed)],
    );
  }

  @override
  
  Size get preferredSize => Size.fromHeight(50);
}
