public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw()
{
        //not used
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String vowels = "aeiou";
	for (int i = 0; i < sWord.length(); i++) {
		if (vowels.indexOf(sWord.charAt(i)) != -1) {
	            return i;
	        }
	    }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if (findFirstVowel(sWord) == -1) {
		return sWord + "ay"; //all consonants
	}
	    
	else if (findFirstVowel(sWord) == 0) {
	        return sWord + "way"; //starts with a vowel
	}
	    
	else if (sWord.startsWith("qu")) {
	        return sWord.substring(2) + "quay"; //starts with "qu"
	}
	    
	else {
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay"; //starts with consonants
	}
   }
}
