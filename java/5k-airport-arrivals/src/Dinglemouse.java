/* https://www.codewars.com/kata/57feb00f08d102352400026e
*  Airport Arrivals/Departures #1
*  This problem simulates the flaps on an airport arrival/departure display.
*  The rotations are cumulative for each letter in the given string, so given
*  the string "123" with rotations int[]{1,1,1} we will get "247" rather than "234"
*  this is because when the first character rotates all characters after it rotates
*  with it and so on.
*
*  Given an array of lines (String[]) and an array of rotor values (int[][]), predict
*  what the resulting string will be.
* */
class Dinglemouse {
    //private static final String ALPHABET = Preloaded.ALPHABET;
    private static final String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ?!@#&()|<>.:=-+*/0123456789";

    public static String[] flapDisplay(final String[] lines, final int[][] rotors) {
        for (int[] rotor : rotors) {
            // Make it so each rotor value adds the previous rotor value in.
            for (int i = 1; i < rotor.length; i++) { rotor[i] += rotor[i-1]; }
            // Then rotate all the lines.
        }
        for (int i = 0; i < lines.length; i++) { lines[i] = rotateLine(lines[i], rotors[i]); }
        return lines;
    }

    private static String rotateLine(String line, int[] rotations) {
        StringBuilder newString = new StringBuilder();
        int rotationNum;
        for (int i = 0; i < line.length(); i++) {
            rotationNum = rotations[i] + ALPHABET.indexOf(line.charAt(i));
            rotationNum %= ALPHABET.length();
            newString.append(ALPHABET.charAt(rotationNum));
        }
        return newString.toString();
    }
}
