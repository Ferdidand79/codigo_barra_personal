import 'package:flutter/material.dart';
import 'dart:io';

import 'package:barcode_image/barcode_image.dart';
import 'package:image/image.dart';

import '../constant/colores.dart';

class GenerarGuardar extends StatefulWidget {
  GenerarGuardar({Key? key}) : super(key: key);

  @override
  State<GenerarGuardar> createState() => _GenerarGuardarState();
}

class _GenerarGuardarState extends State<GenerarGuardar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: Text("Generar código")),
      body: Container(),
    );
  }

  /*void main() {
    // Create an image
    final image = Image(600, 350);

    // Fill it with a solid color (white)
    fill(image, getColor(255, 255, 255));

    // Draw the barcode
    drawBarcode(image, Barcode.code128(), 'Test', font: arial_24);

    // Save the image
    File('barcode.png').writeAsBytesSync(encodePng(image));
  }*/
}
