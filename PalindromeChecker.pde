public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sCheck1 = new String();
  String sCheck2 = new String();
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == true)
      sCheck1 += word.charAt(i);
  }
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(reverse(word).charAt(i)) == true)
      sCheck2 += reverse(word).charAt(i);
  }  
  return sCheck1.toLowerCase().equals(sCheck2.toLowerCase());
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
      sNew += str.substring(i-1, i);      
    }
    return sNew;
}


