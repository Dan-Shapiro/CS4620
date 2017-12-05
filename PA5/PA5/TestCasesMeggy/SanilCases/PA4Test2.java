import meggy.Meggy;

class PA4Test2 {

    public static void main(String[] whatever){
        {
            new Simple().reddot((byte)3, (byte)7);    
            new Simple().reddot((byte)2, (byte)4);    
            new Simple().reddot((byte)6, (byte)1);    
			if(new Simple().randomVal((byte)3) < 6) {
				new Simple().reddot((byte)2, (byte)7);    
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