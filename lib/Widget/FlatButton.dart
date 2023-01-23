import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  final Icon icon;
  final Function Onpressed;

  final String label;
  FlatButtonWidget({
    required this.Onpressed,
    required this.icon,


    required this.label,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton.icon(
        onPressed: Onpressed(),
        icon: icon,
        label: Text('$label'),
      ),
    );
  }
}
