package ch04;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class MUtil {
	
	public static int parseInt(HttpServletRequest reqest, String name) {
		return Integer.parseInt(reqest.getParameter(name));
	}
	
	public static String randomColor() {
		Random r = new Random();
		String rgb = Integer.toHexString(r.nextInt(256));
		rgb += Integer.toHexString(r.nextInt(256));
		rgb += Integer.toHexString(r.nextInt(256));
		return "#" + rgb;
	}
	
	public static int totalCalc(int a, int b) {
		int count=0;
		
		for(int i=a; i<=b; i++) {
			count++;
		}
		
		return (a+b)*count/2;
	}
}
