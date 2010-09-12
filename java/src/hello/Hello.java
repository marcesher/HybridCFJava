package hello;

public class Hello {
	
	public String echo(String input){
		return "Hello. You said: " + input;
	}
	
	public static void main(String[] args) {
		Hello h = new Hello();
		System.out.println(h.echo("marc"));
	}
	
}
