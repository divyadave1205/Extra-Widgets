//Interfaces
void main() {
  X x = X();
  x.dance();
  x.sing();
  x.song();
  x.story();
}

class X implements Y, Z {
  @override
  song() {
    print("a");
  }

  @override
  story() {
    print("b");
  }

  @override
  dance() {
    print("c");
  }

  @override
  sing() {
    print("d");
  }

  X();
}

class Y {
  story() {}

  song() {}
}

class Z {
  sing() {}

  dance() {}
}
