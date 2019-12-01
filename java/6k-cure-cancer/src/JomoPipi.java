/* https://www.codewars.com/kata/cure-cancer
 * Given a char[][], return the coordinates of the cell that's
 * different from all the other cells. If they're all the same
 * return int[0]. There will never be more than one cell that's
 * different from the rest and never less than three rows in the
 * array.
 * */

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
