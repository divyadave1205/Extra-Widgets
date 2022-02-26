//as and is
void main() {
  Object a = "10";
  demo1(a as String);
}

demo(String a) {
  print(a);
}

demo1(String b) {
  if (b is! int) {
    print(b);
  }
}
