class DatosPersonales {
  int? id;
  String? nombre;
  String? dni;

  DatosPersonales({this.id, this.nombre, this.dni});

  DatosPersonales.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    nombre = json["nombre"];
    dni = json["dni"];
  }
}
