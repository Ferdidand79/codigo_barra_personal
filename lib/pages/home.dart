import 'package:codigo_barra_personal/constant/colores.dart';
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
              height: 250,
              width: 250,
              child: Image.asset("assets/images/codigo_barra.png"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
