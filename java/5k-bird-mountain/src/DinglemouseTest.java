import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class DinglemouseTest {

    @Test
    public void ex() {
        char[][] mountain = {
                "^^^^^^        ".toCharArray(),
                " ^^^^^^^^     ".toCharArray(),
                "  ^^^^^^^     ".toCharArray(),
                "  ^^^^^       ".toCharArray(),
                "  ^^^^^^^^^^^ ".toCharArray(),
                "  ^^^^^^      ".toCharArray(),
                "  ^^^^        ".toCharArray()
        };
        assertEquals(3, Dinglemouse.peakHeight(mountain));
    }

    @Test
    public void ex2() {
        char[][] mountain = {
                "       ".toCharArray(),
                "       ".toCharArray(),
                "       ".toCharArray(),
                "       ".toCharArray(),
                "       ".toCharArray(),
                " ^^    ".toCharArray(),
                " ^^^   ".toCharArray(),
                "  ^    ".toCharArray(),
                "   ^   ".toCharArray()
        };
        assertEquals(2, Dinglemouse.peakHeight(mountain));
    }

    @Test
    public void ex3() {
        char[][] mountain = {};
        assertEquals(0, Dinglemouse.peakHeight(mountain));
    }

    @Test
    public void ex4() {
        char[][] mountain = {"      ".toCharArray()};
        assertEquals(0, Dinglemouse.peakHeight(mountain));
    }

    @Test
    public void ex5() {
        char[][] mountain2 = {"      ".toCharArray(),"      ".toCharArray(),"      ".toCharArray()};
        assertEquals(0, Dinglemouse.peakHeight(mountain2));
    }
}
