package comparable;

import java.io.File;
import java.io.FilenameFilter;

public class ThirdLetterFilter implements FilenameFilter {
	char c = ' ';
	public ThirdLetterFilter(char c){
		this.c = c;
	}
	
	@Override
	public boolean accept(File dir, String name) {
		return name.charAt(2) == c;
	}

}
