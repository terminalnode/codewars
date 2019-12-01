import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class BalancedParensTest {
    @Test
    public void test0() {
        List<String> testList = BalancedParens.balancedParens(0);
        String[] expectedArray = new String[] {""};
        List<String> expectedResult = new ArrayList<>(Arrays.asList(expectedArray));
        assertEquals(expectedResult, testList);
    }

    @Test
    public void test1() {
        List<String> testList = BalancedParens.balancedParens(1);
        String[] expectedArray = new String[] {"()"};
        List<String> expectedResult = new ArrayList<>(Arrays.asList(expectedArray));
        assertEquals(expectedResult, testList);
    }

    @Test
    public void test2() {
        List<String> testList = BalancedParens.balancedParens(2);
        Collections.sort(testList);
        String[] expectedArray = new String[] {"(())","()()"};
        List<String> expectedResult = new ArrayList<>(Arrays.asList(expectedArray));
        assertEquals(expectedResult, testList);
    }

    @Test
    public void test3() {
        List<String> testList = BalancedParens.balancedParens(3);
        Collections.sort(testList);
        String[] expectedArray = new String[] {"((()))","(()())","(())()","()(())","()()()"};
        List<String> expectedResult = new ArrayList<>(Arrays.asList(expectedArray));
        assertEquals(expectedResult, testList);
    }

    @Test
    public void test4() {
        List<String> testList = BalancedParens.balancedParens(4);
        Collections.sort(testList);
        String[] expectedArray = new String[] {"(((())))","((()()))","((())())","((()))()","(()(()))","(()()())","(()())()","(())(())","(())()()","()((()))","()(()())","()(())()","()()(())","()()()()"};
        List<String> expectedResult = new ArrayList<>(Arrays.asList(expectedArray));
        assertEquals(expectedResult, testList);
    }
}