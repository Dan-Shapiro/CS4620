import meggy.Meggy;

class PA4Test1 {
  public static void main(String[] args) {
    while(true) {
      new Class2().Method1((byte)4);
    }
  }
}

class Class2 {
  public void Method1(byte a) {
    Meggy.setPixel(a, a, Meggy.Color.ORANGE);
    if(Meggy.getPixel(a, a) == Meggy.Color.GREEN) {
      Meggy.delay(200);
    }
    else {
      Meggy.delay(300);
    }
  }
}

