/* https://www.codewars.com/kata/bird-mountain
*  Bird Mountain: Estimate the height of a mountain by parsing a char array.
*  ^^^^^      11111      11111
*  ^^^^^^^ -> 1^^^111 -> 1222111 -> mountain is two bird eye units high.
*   ^^^^       1111       1111                                                 */

public class Dinglemouse {

    public static int peakHeight(char[][] mountain) {
        int currentElevation = 0;
        boolean keepGoing = true;
        while (keepGoing) {
            boolean increaseElevation = false;
            keepGoing = false;

            // Make a copy of the mountain so we can edit it on the fly (pun intended, sorry)
            char[][] newMountain = new char[mountain.length][];
            for (int i = 0; i < mountain.length; i++) newMountain[i] = mountain[i].clone();

            for (int y = 0; y < mountain.length; y++) {
                for (int x = 0; x < mountain[y].length; x++) {
                    if (isOnTheEdge(y, x, mountain)) {
                        if (mountain[y][x] != ' ') {
                            increaseElevation = true;
                            newMountain[y][x] = ' ';
                        }
                    } else keepGoing = true;
                }
            }
            mountain = newMountain;
            if (increaseElevation) currentElevation++;
        }
        return currentElevation;
    }

    private static boolean isOnTheEdge(int y, int x, char[][] mountain) {
        if (y == 0 || x == 0 || y == mountain.length -1 || x == mountain[0].length - 1) return true;
        char[] borders = { mountain[y+1][x], mountain[y-1][x], mountain[y][x+1], mountain[y][x-1] };
        for (char border : borders) {
            if (border == ' ') return true;
        }
        return false;
    }
}
