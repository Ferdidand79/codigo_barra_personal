import 'package:codigo_barra_personal/constant/colores.dart';
import 'package:flutter/material.dart';

final ElevatedButton verCodigo = new ElevatedButton(
  style: ElevatedButton.styleFrom(backgroundColor: primary),
  onPressed: () {
    print("Elevation button");
  },
  child: Text("Ver códigos generados"),
);
