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
    );
  }
}
