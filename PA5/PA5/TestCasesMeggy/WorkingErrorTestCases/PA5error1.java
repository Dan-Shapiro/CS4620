/**
 * PA5error1.java
 * 
 *  duplicate name errors.
**/
import meggy.Meggy;

class PA5error1 {

    public static void main(String[] whatever){
        new A().run();
    }
}

class A {
    int A;
    byte run;
    
    public int A() {
        return 5;
    }
    
    public void run() 
    {
        Meggy.setPixel((byte)(4),
                       (byte)0, Meggy.Color.ORANGE);
        new B().run(3);
    }
        
}

class B {
    byte B;
    byte A;
    int arf;
    Meggy.Tone B;
    
    public int foo() {
        byte foo;
        int arf;
        boolean foo;
        return 5;
    }
    
    public void run(int run) 
    {
        Meggy.Color run;
        Meggy.setPixel((byte)(this.foo() - this.foo()),
                       (byte)0, Meggy.Color.BLUE);
    }
}

class A {
}
