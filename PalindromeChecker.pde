public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //lowecasify
  String modded = onlyLetters(((word.replaceAll(" ","")).toLowerCase()));
  //basic drome func
  boolean pal = false;
  if(reverse(modded).equals(modded))
    pal = true;
  return pal;
}
public String reverse(String rev)
{
  String g = "";
  for(int i = rev.length()-1; i>=0; i--)
  {
    g+= rev.substring(i,i+1);
  }
  return g;
}

public String onlyLetters(String sString){
  String letta = "";
  for(int i = 0; i <= sString.length()-1; i++)
  {
    char leda = sString.charAt(i);
   if(Character.isLetter(leda) == true)
      letta+= leda;
   }
  return letta;
}