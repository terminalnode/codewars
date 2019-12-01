import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class JosephusSurvivorTest {

    @Test
    public void test1() {
        JosephusTest(7, 3, 4);
    }

    @Test
    public void test2() {
        JosephusTest(11, 19, 10);
    }

    @Test
    public void test3() {
        JosephusTest(40, 3, 28);
    }

    @Test
    public void test4() {
        JosephusTest(14, 2, 13);
    }

    @Test
    public void test5() {
        JosephusTest(100, 1, 100);
    }

    private void JosephusTest(final int n, final int k, final int result) {
        String testDescription = String.format("Testing where n = %d and k = %d", n, k);
        assertEquals(testDescription, result, JosephusSurvivor.josephusSurvivor(n, k));
    }
}