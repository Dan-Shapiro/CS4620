import meggy.Meggy;

class PA3Test2 {

	public static void main(String[] whatever){
		Meggy.setPixel((byte)4, (byte)4, Meggy.Color.RED);
		while(true) {
			if (Meggy.checkButton(Meggy.Button.Up)) {
				Meggy.setPixel( (byte)4, (byte)(4-1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)4, (byte)(4+1), Meggy.Color.RED );
				Meggy.setPixel( (byte)(4-1), (byte)(4), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4+1), (byte)(4), Meggy.Color.DARK );
			}
			if (Meggy.checkButton(Meggy.Button.Down)) {
				Meggy.setPixel( (byte)4, (byte)(4-1), Meggy.Color.RED );
				Meggy.setPixel( (byte)4, (byte)(4+1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4-1), (byte)(4), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4+1), (byte)(4), Meggy.Color.DARK );
			}
			if (Meggy.checkButton(Meggy.Button.Left)) {
				Meggy.setPixel( (byte)4, (byte)(4-1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)4, (byte)(4+1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4-1), (byte)(4), Meggy.Color.RED );
				Meggy.setPixel( (byte)(4+1), (byte)(4), Meggy.Color.DARK );
			}
			if (Meggy.checkButton(Meggy.Button.Right)) {
				Meggy.setPixel( (byte)4, (byte)(4-1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)4, (byte)(4+1), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4-1), (byte)(4), Meggy.Color.DARK );
				Meggy.setPixel( (byte)(4+1), (byte)(4), Meggy.Color.RED );
			}
		}
	}
}