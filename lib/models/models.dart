class Light {
  String? location;
  String? name;
  bool? status;
  List<double>? position;
  int? tile;
  String? image;

  Light.fromMap(Map data) {
    this.location = data['location'] ?? 'No location.';
    this.name = data['name'] ?? 'No name.';
    this.image = data['image'] ?? 'no image.';
    this.status = data['status'] ?? false;
    this.position = data['position'] ?? [0.0];
    this.tile = data['tile'] ?? 0;
  }
}
