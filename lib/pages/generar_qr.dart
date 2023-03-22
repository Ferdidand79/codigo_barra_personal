import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant/colores.dart';

class GenerarQr extends StatefulWidget {
  const GenerarQr({super.key});

  @override
  State<GenerarQr> createState() => _GenerarQrState();
}

class _GenerarQrState extends State<GenerarQr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: Text("Generar QR")),
    );
  }
}
