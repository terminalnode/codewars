import java.util.stream.IntStream;

/**
 * Given a string, return another string where each character
 * has been replaced with '(' if the character occurs only once
 * in the string and ')' otherwise. Case is ignored.
 *
 * https://www.codewars.com/kata/duplicate-encoder
 *
 * @author Alexander Rundberg
 * @version 1.0
 */

public class DuplicateEncoder {
    static String encode(String word){
        int[] chars = toIntStream(word)
                .map(character ->
                        (int) toIntStream(word)
                                .filter(c -> c == character)
                                .count())
                .map(num -> num == 1 ? '(' : ')')
                .toArray();

        StringBuilder result = new StringBuilder();
        for (int c : chars) result.append((char) c);
        return result.toString();
    }

    private static IntStream toIntStream(String word) { return word.toLowerCase().chars(); }
}