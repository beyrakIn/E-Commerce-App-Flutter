import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size.infinite.width,
      child: ClipRect(
        child: FlatButton(
          onPressed: () {},
          child: Text(
            "LOG IN",
            style: Theme.of(context).textTheme.headline6,
          ),
          color: Colors.black,
        ),
      ),
    );
  }
}
