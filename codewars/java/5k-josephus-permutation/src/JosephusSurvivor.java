/* https://www.codewars.com/kata/555624b601231dc7a400017a
*  This exercise is extremely similar to Josephus, only here we return the last remaining element in the list.
*  Also we don't start with a list, but whatever. */
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class JosephusSurvivor {
    public static int josephusSurvivor(final int n, final int k) {
        List<Integer> soldiers = new ArrayList<>();
        for (int i = 1; i <= n; i++) soldiers.add(i);
        while (soldiers.size() > 1) {
            Collections.rotate(soldiers, (1 - k));
            soldiers.remove(0);
        }
        return soldiers.get(0);
    }
}
