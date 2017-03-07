package test;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

public class TestData {
	@Test
	public void testDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String d = sdf.format(date);
		System.out.println(d);
	}
}
