/* Divisor sum: the sum of all of a numbers divisors.
*  Buddy pairs: A pair where the divisor sum of n = m + 1 and vice versa.
*
*  Example:
*  Divisors of 48 are: 1, 2, 3, 4, 6, 8, 12, 16, 24 --> sum: 76 = 75 + 1
*  Divisors of 75 are: 1, 3, 5, 15, 25 --> sum: 49 = 48 + 1 */

public class Bud {
    public static String buddy(long start, long limit) {
        for (long n = start; n <= limit; n++) {
            long candidate = getDivisorSum(n) - 1;
            if (candidate < n) continue; // m has to be larger than n

            if (getDivisorSum(candidate) == n + 1) {
                return "(" + n + " " + candidate + ")";
            }
        }

        return "Nothing";
    }

    private static long getDivisorSum(long n) {
        // Next: Make function break off if result goes above a given value to speed things up.
        long midway = (long) n / 2 + 1; // We're not going to find any divisors after n/2. +1 is to make sure we round up.
        long result = 0;
        for (long i = 1; i < midway; i++) {
            if (n % i == 0) { result += i; }
        }
        return result;
    }
}
