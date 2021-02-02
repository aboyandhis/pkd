import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _PAppBarState createState() => _PAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

class _PAppBarState extends State<PAppBar> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://scontent.fyyc2-1.fna.fbcdn.net/v/t1.0-9/118806945_122389949573364_4411994834232616159_o.jpg?_nc_cat=109&ccb=2&_nc_sid=e3f864&_nc_ohc=wEyj2j9AzG8AX_SMM6M&_nc_ht=scontent.fyyc2-1.fna&oh=7246be04aa943948a17a4d68956a17b1&oe=603EADC1')),
      title: Text('@patkellydesigns'),
      actions: [
        IconButton(icon: Icon(FontAwesomeIcons.hatWizard), onPressed: () {}),
        Switch(
          value: value,
          onChanged: (bool val) {
            setState(() {
              value = val;
            });
          },
          activeColor: Theme.of(context).accentColor,
        )
      ],
    );
  }
}
