import 'package:flutter/material.dart';
import 'package:transporteif/widgets/customizedbutton.dart';

class ButtonCard extends StatelessWidget {
  final String text;

  const ButtonCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Olá, Bem Vindo(a)'),
          CustomizedButton(text: text),
        ],
      ),
    );
  }
}
