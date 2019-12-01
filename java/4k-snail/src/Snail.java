/* https://www.codewars.com/kata/snail
*  Traverse a 2D array clockwise, return numbers in the order they come up. */
import java.util.ArrayList;
import java.util.List;

public class Snail {
    public static int[] snail(int[][] array) {
        List<Integer> preResult = new ArrayList<>();
        List<Integer> stepMap = new ArrayList<>();
        stepMap.add(array[0].length);
        for (int i = array.length - 1; i > 0; i--) {
            stepMap.add(i); stepMap.add(i);
        }
        goRound(preResult, array, stepMap);

        // Parse our preResult into a proper result, then return that result
        int[] result = new int[preResult.size()];
        for (int i = 0; i < preResult.size(); i++) result[i] = preResult.get(i);
        return result;
    }

    private static void goRound(List<Integer> result, int[][] array, List<Integer> stepMap) {
        int[] position = {0, -1};               // Starting point
        Direction direction = Direction.RIGHT;  // Starting direction

        for (Integer integer : stepMap) {
            for (int step = 0; step < integer; step++) {
                position = move(direction, position);
                result.add(array[position[0]][position[1]]);
            }
            direction = turn(direction);
        }
    }

    private enum Direction { RIGHT, DOWN, LEFT, UP; }

    private static int[] move(Direction direction, int[] position) {
        switch (direction) {
            case DOWN:  position[0] = position[0] + 1; break;
            case UP:    position[0] = position[0] - 1; break;
            case RIGHT: position[1] = position[1] + 1; break;
            case LEFT:  position[1] = position[1] - 1; break;
        }
        return position;
    }

    private static Direction turn(Direction direction) {
        switch (direction) {
            case RIGHT: return Direction.DOWN;
            case DOWN:  return Direction.LEFT;
            case LEFT:  return Direction.UP;
            case UP:    return Direction.RIGHT;
        }
        return direction;
    }
}
