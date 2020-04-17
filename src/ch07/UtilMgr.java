package ch07;

public class UtilMgr {
	public static boolean isNumeric(String s) {
		  try {
		      Integer.parseInt(s);
		      return true;
		  } catch(NumberFormatException e) {
		      return false;
		  }
	}
}
