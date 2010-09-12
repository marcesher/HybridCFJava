package generics;

import java.util.ArrayList;
import java.util.List;

public class GenericMethods {

	public String echo(String in){
		return in;		
	}
	
	public String echoList(List list){
		return list.toString();
	}
	
	public String echoGenericStringList(List<String> list){
		return list.toString();
	}
	
	public String echoGenericIntegerList(List<Integer> list){
		return list.toString();
	}
	
	public static void main(String[] args) {
		GenericMethods gm = new GenericMethods();
		System.out.println(gm.echo("hi"));
		
		ArrayList list1 = new ArrayList();
		list1.add("Hi");
		list1.add("Hi2");	
		list1.add(new Integer(5));
		
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("G: Hi");
		list2.add("G: Hi2");	
		
		ArrayList<Integer> list3 = new ArrayList<Integer>();
		list3.add(1);
		list3.add(2);	
		
		System.out.println(gm.echoList(  list1   ));
		System.out.println(gm.echoGenericStringList(  list1   ));
		System.out.println(gm.echoGenericStringList(  list2   ));
		System.out.println(gm.echoGenericIntegerList(  list3   ));
	}
	
}
