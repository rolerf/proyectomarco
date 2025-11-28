class Medicion {
  final int id;
  final String dispositivoId;
  final double temperatura;
  final double humedadSuelo;
  final double humedadAmbiente;
  final DateTime timestamp;
  final String? ipOrigen;

  Medicion({
    required this.id,
    required this.dispositivoId,
    required this.temperatura,
    required this.humedadSuelo,
    required this.humedadAmbiente,
    required this.timestamp,
    this.ipOrigen,
  });

  factory Medicion.fromJson(Map<String, dynamic> json) {
    return Medicion(
      id: json['id'],
      dispositivoId: json['dispositivo_id'],
      temperatura: double.parse(json['temperatura'].toString()),
      humedadSuelo: double.parse(json['humedad_suelo'].toString()),
      humedadAmbiente: double.parse(json['humedad_ambiente'].toString()),
      timestamp: DateTime.parse(json['ts']),
      ipOrigen: json['ip_origen'],
    );
  }
}
