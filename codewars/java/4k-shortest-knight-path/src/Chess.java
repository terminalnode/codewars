/* SHORTEST KNIGHT PATH
 * https://www.codewars.com/kata/shortest-knight-path/train/java
 * Given two positions on a chess board, calculate the minimum number of
 * moves required for a knight to get from the first to the second point.
 * */

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Chess {

    public static int knight(String start, String finish) {
        int stepsSoFar = 0;
        Point startPoint = new Point(start);
        Point endPoint = new Point(finish);
        HashSet<Point> visited = new HashSet<>();
        ArrayList<Point> positions = new ArrayList<>();
        visited.add(startPoint);
        positions.add(startPoint);
        int[][] movementMatrix = {
                { 2, -1}, { 2, 1},
                {-2,  1}, {-2,-1},
                { 1,  2}, { 1,-2},
                {-1,  2}, {-1,-2}};

        while (!positions.contains(endPoint)) {
            stepsSoFar++;
            ArrayList<Point> newPositions = new ArrayList<>();
            for (Point position : positions) {
                List<Point> possibleMoves = Stream.of(movementMatrix)
                        .map(x -> new Point(position.x + x[0], position.y + x[1]))
                        .filter(Point::isValid)
                        .collect(Collectors.toList());
                for (Point newPosition : possibleMoves) {
                    if (!visited.contains(newPosition)) {
                        visited.add(newPosition);
                        newPositions.add(newPosition);
                    }
                }
            }
            positions = newPositions;
        }
        return stepsSoFar;
    }

    private static class Point {
        int x, y;
        Point(int x, int y) {
            this.x = x;
            this.y = y;
        }

        Point(String xy) {
            switch (xy.charAt(0)) {
                case 'a': x = 1; break; case 'b': x = 2; break;
                case 'c': x = 3; break; case 'd': x = 4; break;
                case 'e': x = 5; break; case 'f': x = 6; break;
                case 'g': x = 7; break; default : x = 8; break;
            }
            y = Integer.parseInt("" + xy.charAt(1));
        }

        public boolean isValid() {
            return this.x > 0 && this.x <= 8 && this.y > 0 && this.y <= 8;
        }

        @Override
        public boolean equals(Object o) {
            Point other = (Point) o;
            return other.x == x && other.y == y;
        }
    }
}
