import 'package:flutter/material.dart';
import 'package:transporteif/widgets/qrcard.dart';
import 'package:transporteif/widgets/navigationcard.dart';
import 'package:transporteif/assets/themes/class_themes.dart';
import 'package:transporteif/widgets/appbar_initial.dart';
import 'package:transporteif/widgets/buttoncard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  int _counter = -1; // Variável de instância

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarInitial(
          pessoa: 'Marcony Henrique', credencial: '20221BCC.CAX0003'),
      extendBody: true,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ButtonCard(text: 'Comprar Ticket'),
          const Divider(height: 0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Seus Tickets de Hoje'),
                      QrCard(
                        dia: 'Seg',
                        status: 1,
                      ),
                      QrCard(dia: 'Ter', status: 0),
                      QrCard(dia: 'Qua', status: 2)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 10.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Outras Opções'),
                      NavigationCard(
                          title: 'Alerta',
                          icon: Icon(Icons.notifications_active_outlined)),
                      NavigationCard(
                          title: 'Histórico', icon: Icon(Icons.access_time)),
                      NavigationCard(
                          title: 'Localização', icon: Icon(Icons.search)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      if (widget._counter >= 2) {
        widget._counter = -1;
        return;
      }
      widget._counter++; // Incrementa o contador
    });
  }
}
