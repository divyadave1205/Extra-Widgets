class Example {
  var a;
  var b;
  void bSetter(b) {
    this.b = b;
  }

  void printValues() {
    print(this.a);
    print(this.b);
  }
}

void main() {
  //cascade notation
  Example eg1 = Example();
  Example eg2 = Example();
  print("Example 1 results...");
  eg1
    ..a = 88
    ..bSetter(53)
    ..printValues();
  print("Example 2 results...");

  eg2.a = 88;
  eg2.bSetter(53);
  eg2.printValues();
}
