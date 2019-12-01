/* https://www.codewars.com/kata/5254ca2719453dcc0b00027d
 * For a given string, find all letter combinations that can be produced from that string. */
import java.util.*;

class Permutations {
    public static List<String> singlePermutations(String s) {
        Set<String> allPermutations = new HashSet<>();
        getPermutations(new StringBuilder(), allPermutations, new StringBuilder(s));
        return new ArrayList<>(allPermutations);
    }

    public static void getPermutations(StringBuilder string, Set<String> allPermutations, StringBuilder inputString) {
        if (inputString.length() == 0) {
            allPermutations.add(string.toString());
        } else {
            for (int i = 0; i < inputString.length(); i++) {
                // Copy current string.
                StringBuilder newString = new StringBuilder(string.toString())
                        .append(inputString.toString().charAt(i));
                StringBuilder newInputString = new StringBuilder(inputString.toString()).deleteCharAt(i);

                // Repeat until done.
                getPermutations(newString, allPermutations, newInputString);
            }
        }
    }
}
