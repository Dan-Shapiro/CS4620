import meggy.Meggy;

class PA4Test3 {
  public static void main(String[] args) {
    new Class2().Method2(Meggy.Button.Up);
  }
}

class Class2 {
  public boolean Method1() {
    return !(false) && ((-3) < 5) && (3 + 1 == 4) && (2 - 4 == (byte)2 * (byte)1);
  }

  public void Method2(Meggy.Button a) {
    this.Method1();
  }

  public int Method3(Meggy.Color a, Meggy.Tone b) {
    if(Meggy.checkButton(Meggy.Button.Down)) {
      Meggy.delay(100);
    }
    return 2;
  }
}

