import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Given a string, return another string where each character
 * has been replaced with '(' if the character occurs only once
 * in the string and ')' otherwise. Case is ignored.
 *
 * https://www.codewars.com/kata/duplicate-encoder
 *
 * @author Alexander Rundberg
 * @version 1.1
 */

public class DuplicateEncoder {
    static String encode(String word) {
        final String[] array = word.toLowerCase().split("");

        return Stream.of(array)
                .map(c1 -> Stream.of(array)
                        .filter(c1::equals)
                        .count())
                .map(num -> num == 1 ? "(" : ")")
                .collect(Collectors.joining());
    }
}