import java.util.Arrays;

class JomoPipi {
    public static int[] mutationLocation(char[][] body) {
        char[] reference;
        if (Arrays.equals(body[0], body[1])) reference = body[0];
        else reference = body[2];

        for (int y = 0; y < body.length; y++)
            for (int x = 0; x < body[y].length; x++)
                if (reference[x] != body[y][x])
                    return new int[]{y,x};

        // Found nothing wrong, return empty array
        return new int[0];
    }
}
