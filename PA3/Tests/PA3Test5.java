import meggy.Meggy;

class PA3Test5 {
  public static void main(String[] args) {
    while(true) {
      if(!(false) == true) {
        Meggy.setPixel((byte)3, (byte)4, Meggy.Color.GREEN);
        if(Meggy.getPixel((byte)3, (byte)4) == Meggy.Color.GREEN) {
          Meggy.setPixel((byte)4, (byte)5, Meggy.Color.RED);
        }
      }
      if((byte)3 * (byte)2 + (-1) - 1 == 4 && true) {
        Meggy.delay(300);
      }
    }
  }
}

