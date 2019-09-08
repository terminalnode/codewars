/* https://www.codewars.com/kata/54b724efac3d5402db00065e
*  Input is a string of spaces, dots and dashes representing morse code.
*  Output is the decoded message.
*  Letter boundaries are represented by a single space, word boundaries are represented by three spaces.
*  The given function MorseCode.get() returns null for spaces. */

public class MorseCodeDecoder {
    public static String decode(String morseCode) {
        String[] splitMessage = morseCode.strip().split("\\s?\\s");
        StringBuilder decodedMessage = new StringBuilder();
        for (String code : splitMessage) {
            String newEntry = MorseCode.get(code);
            if (newEntry == null) {
                decodedMessage.append(' ');
            } else {
                decodedMessage.append(newEntry);
            }
        }
        return new String(decodedMessage);
    }
}
