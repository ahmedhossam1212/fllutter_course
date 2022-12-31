       
import 'package:flutter/material.dart';

void navigateTo (context,widget)=> Navigator.push(context,
    MaterialPageRoute(builder: (context)=>widget,
    ),
);




class TextArt extends StatelessWidget {
  const TextArt({
    super.key,
    required this.text,
    required this.textColor,
  });

  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
      ),
    );
  }
}
