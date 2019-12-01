/* https://www.codewars.com/kata/sum-of-intervals/
 * Calculate the sum of a list of intervalls. If there is an overlap
 * the overlapping regions should only be counted once.
 * Thus [(1,4), (3,5)] can be considered the same as [(1,5)].
 */
package cw;

import java.util.HashSet;
import java.util.Set;

public class Interval {

    public static int sumIntervals(int[][] intervals) {
        if (intervals == null) {
            return 0;
        }

        Set<Integer> intervalConstituents = new HashSet<>();
        for (int[] interval : intervals) {
            for (int i = interval[0]; i < interval[1]; i++) {
                intervalConstituents.add(i);
            }
        }

        return intervalConstituents.size();
    }
}