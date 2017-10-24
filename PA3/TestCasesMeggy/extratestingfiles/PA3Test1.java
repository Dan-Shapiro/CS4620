import meggy.Meggy;

class PA3Test1 {
	public static void main(String[] args) {
		Meggy.setPixel((byte)4, (byte)4, Meggy.Color.BLUE);

		while(true) {
			if (Meggy.checkButton(Meggy.Button.A)) {
				Meggy.setPixel( (byte)0, (byte)0, Meggy.Color.RED );
				Meggy.setPixel( (byte)7, (byte)0, Meggy.Color.DARK );
				Meggy.setPixel( (byte)7, (byte)7, Meggy.Color.DARK );
			} else {
				if (Meggy.checkButton(Meggy.Button.B)) {
					Meggy.setPixel( (byte)7, (byte)0, Meggy.Color.GREEN );
					//Meggy.setPixel( (byte)0, (byte)0, Meggy.Color.DARK );
					Meggy.setPixel( (byte)7, (byte)7, Meggy.Color.DARK );
				} else {
					Meggy.setPixel( (byte)7, (byte)7, Meggy.Color.ORANGE );                    
					//Meggy.setPixel( (byte)7, (byte)0, Meggy.Color.DARK );
					//Meggy.setPixel( (byte)0, (byte)0, Meggy.Color.DARK );
				}

				Meggy.delay(100);
			}
		}
	}
}
