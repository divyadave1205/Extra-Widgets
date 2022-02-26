//mixins
void main() {
  C c = C();
  c.a();
  c.b();
  c.c();
}

class A {
  a() {
    print("a");
  }
}

mixin B {
  b() {
    print("b");
  }
}

class C extends A with B {
  c() {
    print("c");
  }
}
