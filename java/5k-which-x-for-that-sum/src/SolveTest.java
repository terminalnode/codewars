import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class SolveTest {
    private static int randInt(int min, int max) {
        return min + (int)(Math.random() * ((max - min) + 1));
    }
    private void assertFuzzy(double m, double expect)
    {
        double merr = 1e-12;
        System.out.println("Testing " + m);
        double actual = Solve.solve(m);
        System.out.println("Actual: " + actual);
        System.out.println("Expect: " + expect);
        boolean inrange = Math.abs(actual - expect) <= merr;
        if (inrange == false)
        {
            System.out.println("Expected must be near " + expect +", got " + actual);
        }
        System.out.println("-");
        assertEquals(true, inrange);
    }

    @Test
    public void test1() {
        System.out.println(Solve.solve(500_000));
        assertFuzzy(2.00, 5.000000000000e-01);
        assertFuzzy(4.00, 6.096117967978e-01);
        assertFuzzy(5.00, 6.417424305044e-01);

    }
}