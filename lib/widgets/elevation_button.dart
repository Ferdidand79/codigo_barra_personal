import 'package:codigo_barra_personal/constant/colores.dart';
import 'package:flutter/material.dart';

final ElevatedButton elevationButton = new ElevatedButton(
  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
  onPressed: () {
    print("Elevation button");
  },
  child: Text("Generar código de barra"),
);
