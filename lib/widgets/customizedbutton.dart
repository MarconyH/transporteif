import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String text;
  const CustomizedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      child: Text(text),
    );
  }

}