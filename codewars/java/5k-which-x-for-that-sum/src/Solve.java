/* https://www.codewars.com/kata/which-x-for-that-sum
 For the sequence U(n, x) = (1 * x^1) + (2 * x^2) ... (n * x^n)
 Given the input y, find an x for which the above sequence converges on y.

 Example:
 solve(2.0) returns 0.5 because U(n, 0.5) converges on 2 when n goes to infinity.
*/

public class Solve {
    public static double solve(double m) {
        // We're doing some kind of binary search.
        double minimum = 0, maximum = 1;
        double x, result;

        while(true){
            x = minimum + (maximum - minimum) / 2;
            result = convergeOnValue(x);
            if (goodEnough(result, m)) break;
            if (goodEnough(minimum, maximum)) break;

            if (result > m) maximum = x;
            else minimum = x;
        }
        return x;
    }

    private static double convergeOnValue(double x) {
        double oldResult, result = 0;
        int n = 0;
        do {
            n++; oldResult = result;
            result += (n * (Math.pow(x, n)));
        } while (!goodEnough(oldResult, result));
        return result;
    }

    private static boolean goodEnough(double oldValue, double newValue) {
        return Math.abs(oldValue - newValue) < 1e-12;
    }
}
