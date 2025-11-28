class Observacion {
  final int id;
  final int lectorRegistro;
  final String mensaje;
  final DateTime fecha;

  Observacion({
    required this.id,
    required this.lectorRegistro,
    required this.mensaje,
    required this.fecha,
  });

  factory Observacion.fromJson(Map<String, dynamic> json) {
    return Observacion(
      id: json['reg_observaciones'],
      lectorRegistro: json['lector_registro'],
      mensaje: json['mensaje'],
      fecha: DateTime.parse(json['fecha_ob']),
    );
  }
}
