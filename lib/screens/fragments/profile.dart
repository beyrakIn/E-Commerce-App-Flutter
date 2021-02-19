import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Profile",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 115,
            height: 115,
            child: CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ),
          ProfileMenu(text: "My Account", icon: Icon(Icons.verified_user)),
          ProfileMenu(text: "My Account", icon: Icon(Icons.verified_user)),
          ProfileMenu(text: "My Account", icon: Icon(Icons.verified_user)),
          ProfileMenu(text: "My Account", icon: Icon(Icons.verified_user)),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback press;

  ProfileMenu({
    Key key,
    this.text,
    this.press,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white54,
        onPressed: () {},
        child: Row(
          children: [
            icon,
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
