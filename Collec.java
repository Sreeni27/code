import java.util.ArrayList;

public class Collec 
{

	public static void main(String[] args) 
        {
				
		ArrayList<String> list1 = new ArrayList<String>();
		list1.add("sreeni");
		list1.add("harish");
		list1.add(1, "asmdad");
		list1.set(2, "HARISH");
		list1.ensureCapacity(3);
		list1.remove(1);
		ArrayList<String> list2= new ArrayList<String>();
		list2.add("ssdsd");
		list2.add("jkjbkj");
		System.out.println(list1);
		System.out.println(list2);
		
		
	}

}
