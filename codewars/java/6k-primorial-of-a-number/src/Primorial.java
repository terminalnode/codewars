import java.math.BigInteger;
import java.util.ArrayList;
public class Primorial {
    public static String numPrimorial(int n) {
        /* The primorial is defined as the product of the first n primes.
         For example the first three primes are 2, 3 and 5, so the primorial of three is 2*3*5 = 30.
        So for this function we need to find the n first number of primes and return the product of those primes.
        There probably is some easy way to get a int list of primes, including defining it explicitly, but that wouldn't be much of a challenge would it?*/
        ArrayList<BigInteger> primes = getPrimes(n);
        BigInteger product = new BigInteger("1");
        for (BigInteger i : primes) product = product.multiply(i);
        return product.toString();
    }

    private static ArrayList<BigInteger> getPrimes(int n) {
        /* Get the first n number of primes through brute force. If a number is prime it should only be divisible by itself and 1.
        Furthermore 1 is not itself a prime number.*/
        ArrayList<BigInteger> primes = new ArrayList<>();

        for (int potentialPrime = 2; n > 0; potentialPrime++) {
            boolean isPrime = true;

            for (int divisor = potentialPrime - 1; divisor > 1; divisor--) {
                if (potentialPrime % divisor == 0) {
                    isPrime = false;
                    break;
                }
            }
            if (isPrime) {
                primes.add(BigInteger.valueOf(potentialPrime));
                n--;
            }
        }
        return primes;
    }
}