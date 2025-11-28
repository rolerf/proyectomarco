class Lector {
  final int registro;
  final String nombre;
  final String correo;

  Lector({required this.registro, required this.nombre, required this.correo});

  factory Lector.fromJson(Map<String, dynamic> json) {
    return Lector(
      registro: json['registro'],
      nombre: json['nombre'],
      correo: json['correo'],
    );
  }
}
