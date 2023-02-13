import 'dart:convert'; //me hizo importar
import 'dart:math';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:codigo_barra_personal/models/datos_personales.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

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
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<DatosPersonales>;

              //---Lista---//

              return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  //---Card---//

                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                    //--Container--//
                    child: Container(
                      height: 270,
                      color: Colors.white,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            items[index].id.toString() +
                                " " +
                                items[index].nombre.toString(),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),

                            //---Barcode--//

                            child: BarcodeWidget(
                              data: items[index].dni.toString(),
                              barcode: Barcode.code128(),
                              errorBuilder: (context, error) => Center(
                                child: Text(error),
                              ),
                              //width: 250,
                              //height: 80,
                            ),
                          )
                        ],
                      )),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

  Future<List<DatosPersonales>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/jsons/datos_personales.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => DatosPersonales.fromJson(e)).toList();
  }
}
