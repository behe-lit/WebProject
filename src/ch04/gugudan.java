package ch04;

public class gugudan {
	
	
	public static int gugudan(int a, int[] value,int num) {
		
		
		for(int i=1; i<10; i++) {
			value[i-1] = a*i;
		}
		
		return value[num];
	}
	
	public static void main(String[] args) {
		int[] two = new int[9];
		
		System.out.println(gugudan(2,two,8));
	}
}
