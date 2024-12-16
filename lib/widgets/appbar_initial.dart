import 'package:flutter/material.dart';

class AppBarInitial extends StatelessWidget implements PreferredSizeWidget {
  final String pessoa;
  final String credencial;
  String? fomatedCredencial;

  AppBarInitial({super.key, required this.pessoa, required this.credencial}) {
    fomatedCredencial = formatarCredencial(credencial);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Olá, $pessoa'),
              Text(
                fomatedCredencial ?? '',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          const Icon(Icons.exit_to_app_rounded, color: Colors.red,)
        ],
      ),
    );
  }

  String formatarCredencial(String credencial) {
    final cpfPattern = RegExp(r'^\d{11}$');
    if (cpfPattern.hasMatch(credencial)) {
      return '${credencial.substring(0, 3)}.${credencial.substring(3, 6)}.${credencial.substring(6, 9)}-${credencial.substring(9)}';
    }
    return credencial;
  }

  // Implementação obrigatória do PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
