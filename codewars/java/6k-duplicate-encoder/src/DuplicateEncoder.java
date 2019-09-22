/* https://www.codewars.com/kata/duplicate-encoder
 * Given a string, return another string where each character
 * has been replaced with ( if the character occurs only once
 * in the string and ) otherwise. Ignore case.
 * */
import java.util.stream.IntStream;

public class DuplicateEncoder {
    static String encode(String word){
        int[] chars =
                toIntStream(word)
                .map(character ->
                        toIntStream(word)
                        .filter(c -> c == character)
                        .toArray()
                        .length)
                .map(num -> num == 1 ? '(' : ')')
                .toArray();

        StringBuilder result = new StringBuilder();
        for (int c : chars) result.append((char) c);
        return result.toString();
    }

    static IntStream toIntStream(String word) {
        return word.toLowerCase().chars();
    }
}