/* https://www.codewars.com/kata/bird-mountain-the-river
*  Similar to the previous exercise 5k-bird-mountain. The the premise here is for a bird flying over a river
*  to estimate the available dry ground for this and the next three days. The number of dry ground tiles for
*  each day is represented as int[] {day0, day1, day2, day3} with dayN being the dry ground tiles for that day.
*  Input data is a char array where ' ' represents ground, '^' represents mountains and '-' the river.
*  Mountains get flooded one level at a time. */

import java.util.ArrayList;

public class Dinglemouse {
    public static int[] dryGround(char[][] terrain) {
        int[] result = new int[4];

        // System.out.println(countFree(terrain));
        // printMap(terrain);

        // findWater(terrain, false);
        // System.out.println('\n');

        // System.out.println(countFree(terrain));
        // printMap(terrain);

        // findWater(terrain, true);
        // System.out.println('\n');

        // System.out.println(countFree(terrain));
        // printMap(terrain);

        return result;
    }

    private static void printMap(char[][] terrain) {
        for (char[] row : terrain) {
            for (char tile : row) {
                if (tile == ' ') {
                    System.out.print('o');
                } else {
                    System.out.print(tile);
                }
            }
            System.out.println();
        }
    }

    private static int countFree(char[][] terrain) {
        int result = 0;
        for (char[] row : terrain) {
            for (char tile : row) if (tile != '-')
                result++;
        }
        return result;
    }

    private static void findWater(char[][] terrain, boolean floodMountains) {
        ArrayList<int[]> waterNeighbours = new ArrayList<>();

        for (int y = 0; y < terrain.length; y++) {
            for (int x = 0; x < terrain[y].length; x++) {
                int[][] freeNeighbours;
                if (terrain[y][x] == '-') {
                    freeNeighbours = getFreeNeighbours(terrain, y, x, floodMountains);
                    for (int[] neighbour : freeNeighbours) {
                        if (neighbour != null) waterNeighbours.add(neighbour);
                    }
                }
            }
        }
        for (int[] coordinate : waterNeighbours) {
            flood(terrain, coordinate[0], coordinate[1]);
        }
    }


    private static void flood(char[][] terrain, int y, int x) {
        boolean mountainIsFree = (terrain[y][x] != '^');
        terrain[y][x] = '-';


        for (int[] neighbour : getFreeNeighbours(terrain, y, x, mountainIsFree)) {
            if (neighbour == null) continue;
            if (terrain[neighbour[0]][neighbour[1]] == ' ') flood(terrain, neighbour[0], neighbour[1]);
        }
    }

    // Returns a 2D int array where entries are coordinates of free numbers of the form int[]{y,x} or null.
    private static int[][] getFreeNeighbours(char[][] terrain, int y, int x, boolean mountainIsFree) {
        int[][] result = new int[4][];
        int[][] neighbours = {{y+1,x}, {y-1,x}, {y,x+1}, {y,x-1}};

        for (int i = 0; i < 4; i++) {
            int neighbourY = neighbours[i][0];
            int neighbourX = neighbours[i][1];

            // Skip if out of range
            if (neighbourX < 0 || neighbourX > terrain[y].length - 1 ) continue;
            if (neighbourY < 0 || neighbourY > terrain.length - 1 ) continue;

            char target = terrain[neighbourY][neighbourX];
            if (target == ' ' || (mountainIsFree && target == '^')) {
                result[i] = new int[]{neighbourY, neighbourX};
            }
        }
        return result;
    }

}
