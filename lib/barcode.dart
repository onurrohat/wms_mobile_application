class Barcode {
  final String outputs;

  Barcode({required this.outputs});

  factory Barcode.fromRTDB(Map<String, dynamic> data) {
    return Barcode(outputs: data['outputs']);
  }
}
