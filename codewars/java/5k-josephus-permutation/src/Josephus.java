/* https://www.codewars.com/kata/josephus-permutation/
*  Loop the list and remove every k entry until the list is empty.
*  Add the removed entries to a new list and return that list. */
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Josephus {
    public static <T> List<T> josephusPermutation(final List<T> items, final int k) {
        List<T> result = new ArrayList<>();
        while (items.size() > 0) {
            Collections.rotate(items, (1 - k));
            result.add(items.remove(0));
        }
        return result;
    }
}