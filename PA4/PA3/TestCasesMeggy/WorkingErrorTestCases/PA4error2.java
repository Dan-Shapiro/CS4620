import meggy.Meggy;

//incorrect type error
class PA4Error2 {
    public static void main(String[] whatever){
	   new C().setP(2,(byte)7,Meggy.Color.BLUE);
    }
}

class C {
    public void setP(Meggy.Color x, byte y, Meggy.Color c) {
        Meggy.setPixel(y, y, c);    
    }
}
