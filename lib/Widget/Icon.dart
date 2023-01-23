import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Icon icon;
  final Function onpressed;
  final double IconSize;

  CircularButton({required this.onpressed, required this.icon, required this.IconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6),
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: IconButton(
          onPressed: onpressed(),
          icon: icon,
          iconSize: IconSize,
          color: Colors.black,
        ));
  }
}
