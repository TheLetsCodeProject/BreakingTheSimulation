using System;

class Program{
	public static string phone = "0405747912";
	public static crazy = false;
	public static JuestMetYou = true;

	static void main(string[] args){

		if(JustMetYou){
			crazy = true;
			Console.Writeline($"Heres my number: {phone}")
			if(Maybe()) {
				CallMe(phone);
			}
		}
	}

	public static bool Maybe(){
		Random rnd = new Random();
		int chance = rnd.Next(1);

		if(chance < 5){
			return true;
		} else {
			return false;
		}
	}

	public static CallMe(string number){
		Console.Writline($"Calling {number}");
	}
}
