/* https://www.codewars.com/kata/5426d7a2c2c7784365000783
*  Write a function which makes a list of strings representing all of the ways you can balance n pairs of parentheses.
*  balancedParens(0) returns ArrayList<String> with element:  ""
*  balancedParens(1) returns ArrayList<String> with element:  "()"
*  balancedParens(2) returns ArrayList<String> with elements: "()()","(())"
*  balancedParens(3) returns ArrayList<String> with elements: "()()()","(())()","()(())","(()())","((()))"*/

import java.util.ArrayList;
import java.util.List;
public class BalancedParens {
     public static List <String> balancedParens (int n) {
         List<StringBuilder> workingStrings = addParen("", n, 0);
         List<String> result = new ArrayList<>();
         for (StringBuilder current : workingStrings) result.add(current.toString());
         return result;
     }

     private static List<StringBuilder> addParen(String startingString, int parenLimit, int openParens) {
         StringBuilder current = new StringBuilder(startingString);
         List<StringBuilder> result = new ArrayList<>();

         while (parenLimit > 0 || openParens > 0) {
            if (parenLimit > 0 && openParens > 0) {
                // Fork the string, create one with a new open paren and one that closes the paren.
                String currentFork = current.toString() + '(';
                List<StringBuilder> forkResult = addParen(currentFork, parenLimit - 1, openParens + 1);
                for (StringBuilder forkChild : forkResult) result.add(forkChild);

                // For the current StringBuilder, just add a closing paren and continue.
                current.append(')');
                openParens--;

            } else if (openParens > 0) {
                // Has open parens but parenLimit is 0. Close all remaining parens.
                while (openParens > 0) {
                    openParens--;
                    current.append(')');
                }

            } else if (parenLimit > 0) {
                // Paren limit not yet 0. Open a new paren.
                current.append('('); parenLimit--; openParens++;
            }
         }
         result.add(current);
         return result;
     }
}
