import meggy.Meggy;

class PA4Test3 {

    public static void main(String[] whatever){
        {
			while(true) {
				if (Meggy.checkButton(Meggy.Button.Up)) {
					new Simple().reddot((byte)3, (byte)7);    
				}
				if (Meggy.checkButton(Meggy.Button.Down)) {
					new Simple().reddot((byte)2, (byte)4);    
				}
				if (Meggy.checkButton(Meggy.Button.Left)) {
					new Simple().reddot((byte)6, (byte)1);    
				}
				if (Meggy.checkButton(Meggy.Button.Right)) {
					if(new Simple().randomVal((byte)3) < 6) {
						new Simple().reddot((byte)2, (byte)7);    
					}
				}
			}

        }
    }
}

class Simple {
    
    public void reddot(byte x, byte y) {
        Meggy.setPixel( x, y, Meggy.Color.RED );
    }
	public byte randomVal(int b) {
		return (byte)(b +2);
	}
}