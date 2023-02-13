import 'package:codigo_barra_personal/constant/colores.dart';
import 'package:codigo_barra_personal/pages/generar_codigo.dart';
import 'package:codigo_barra_personal/widgets/elevation_button.dart';
import 'package:codigo_barra_personal/widgets/elevation_button_ver.dart';
import 'package:flutter/material.dart';

class HomeCodigoBarra extends StatefulWidget {
  HomeCodigoBarra({Key? key}) : super(key: key);

  @override
  State<HomeCodigoBarra> createState() => _HomeCodigoBarraState();
}

class _HomeCodigoBarraState extends State<HomeCodigoBarra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: Text("DTI Personal")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 210,
              width: 210,
              child: Image.asset("assets/images/UPeU_azul.png"),
            ),
            SizedBox(
              height: 20,
            ),

            //---Botones---//

            Container(
              height: 65,
              width: double.infinity,
              margin: EdgeInsets.only(right: 30, top: 0, left: 38, bottom: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              child:
                  textButton("Generar código de barra", GenerarCodigoBarra()),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 65,
                width: double.infinity,
                margin: EdgeInsets.only(right: 30, top: 0, left: 38, bottom: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primary,
                ),
                child:
                    textButton("Ver códigos generados", GenerarCodigoBarra())),
          ],
        ),
      ),
    );
  }

  Widget textButton(String text, Widget widget) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
