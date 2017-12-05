import meggy.Meggy;

class PA5Test4 {
  public static void main(String[] args) {
    Meggy.setPixel((byte)1, (byte)2, Meggy.Color.BLUE);
    if(Meggy.getPixel((byte)1, (byte)2) == Meggy.Color.GREEN) {
      Meggy.delay(200);
    }
    else {
      Meggy.toneStart(Meggy.Tone.C3, 300);
    }
    if(Meggy.checkButton(Meggy.Button.A)) {
      while(true) {
        Meggy.delay(100);
      }
    }
  }
}

