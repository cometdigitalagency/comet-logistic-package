class Vehicle {
  final String? id;
  final String license;
  final String brand;
  final String type;
  final String color;
  final String? riderId;
  final String? status;

  Vehicle({
    this.id,
    required this.license,
    required this.brand,
    required this.type,
    required this.color,
    this.riderId,
    this.status,
  });
}
