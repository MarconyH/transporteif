import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transporteif/assets/themes/class_themes.dart';

class QrCard extends StatelessWidget {
  final String dia;
  final int status;
  const QrCard({super.key, required this.dia, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    dia,
                  ),
                  const Text('Status'),
                  switch (status) {
                    -1 => const Row(children: [
                        Icon(Icons.close, color: AppThemeCustom.red500),
                        Text('Pagamento Negado')
                      ]),
                    0 => const Row(children: [
                        Icon(
                          Icons.error_rounded,
                          color: AppThemeCustom.yellow500,
                        ),
                        Text('Pagamento Pendente')
                      ]),
                    1 => const Row(children: [
                        Icon(Icons.monetization_on_rounded,
                            color: AppThemeCustom.green500),
                        Text('Pagamento Realizado')
                      ]),
                    2 => const Row(children: [
                        Icon(Icons.check_circle, color: AppThemeCustom.gray400),
                        Text('Utilizado')
                      ]),
                    // TODO:_outline_ Handle this case.
                    int() => throw UnimplementedError(),
                  }
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  switch (status) {
                    -1 => const Column(
                        mainAxisSize: MainAxisSize.min,
                      ),
                    0 => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                'lib/assets/icons/QrCodeBarYellow.svg', height: 65,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                    'lib/assets/icons/QrCodeYellow.svg'),
                                const Text('Pagar',
                                    style: TextStyle(
                                        color: AppThemeCustom.yellow500)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    1 => SizedBox(
                      width: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'lib/assets/icons/QrCodeBarBlue.svg', height: 65,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                  'lib/assets/icons/QrCode-(Compressify.io).svg'),
                              const Text('Utilizar',
                                  style: TextStyle(
                                      color: AppThemeCustom.blue500)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    2 => const Column(
                        mainAxisSize: MainAxisSize.min,
                      ),
                    // TODO:_outline_ Handle this case.
                    int() => throw UnimplementedError(),
                  }
                ],
              )
            ],
          ),
        ),
      );
  }
}
