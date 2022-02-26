// Extension Method
void main() {
  print("a".a);
}

extension GetString on String {
  String get a {
    return "divya";
  }
}

extension CapitalizeExtension on String {
  String get capitalize {
    return this.isEmpty ? this : (this[0].toUpperCase() + this.substring(1));
  }
}
