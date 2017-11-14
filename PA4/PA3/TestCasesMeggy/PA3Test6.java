import meggy.Meggy;

class PA3Test6 {
  public static void main(String[] args) {
    while(true) {
      if(Meggy.checkButton(Meggy.Button.B)) {
        Meggy.setPixel((byte)3, (byte)4, Meggy.Color.GREEN);
      }
      else {
        Meggy.setPixel((byte)3, (byte)4, Meggy.Color.RED);
      }
    }
  }
}

