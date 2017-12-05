import meggy.Meggy;

class PA4Test1 {

    public static void main(String[] whatever){
        {
            new Simple().reddot((byte)3, (byte)7);    
            new Simple().reddot((byte)2, (byte)4);    
            new Simple().reddot((byte)6, (byte)1);    
            Meggy.setPixel((byte)1, (byte)2, Meggy.Color.BLUE );
    
        }
    }
}

class Simple {
    
    public void reddot(byte x, byte y) {
        Meggy.setPixel( x, y, Meggy.Color.RED );
    }

}