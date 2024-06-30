class SmartDevice {
  final String name;
  final String img;
  bool enabled;

  SmartDevice({
    required this.name,
    required this.img,
    this.enabled = false,
  });
}
