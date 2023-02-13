import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../constant/colores.dart';

class GenerarCodigoBarra extends StatefulWidget {
  GenerarCodigoBarra({Key? key}) : super(key: key);

  @override
  State<GenerarCodigoBarra> createState() => _GenerarCodigoBarraState();
}

class _GenerarCodigoBarraState extends State<GenerarCodigoBarra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: Text("Generar código")),
      body: Container(
          //height: double.infinity,
          //width: ,
          alignment: Alignment.center,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: '73568910',
                errorBuilder: (context, error) => Center(
                  child: Text(error),
                ),
                height: 200,
                width: 300,
              ),
              /*Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                height: 50,
                width: 50,
                child: Image.asset("assets/images/UPeU_azul.png"),
              )*/
            ],
          )),
    );
  }
}
