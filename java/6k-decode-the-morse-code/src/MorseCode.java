// Code wars comes with a preloaded module called MorseCode.
// I've recreated this functionality here for testing purposes.
public class MorseCode {
    public static String get(String string) {
        switch (string) {
            case ".-": return "A";
            case "-...": return "B";
            case "-.-.": return "C";
            case "-..": return "D";
            case ".": return "E";
            case "..-.": return "F";
            case "--.": return "G";
            case "....": return "H";
            case "..": return "I";
            case ".---": return "J";
            case "-.-": return "K";
            case ".-..": return "L";
            case "--": return "M";
            case "-.": return "N";
            case "---": return "O";
            case ".--.": return "P";
            case "--.-": return "Q";
            case ".-.": return "R";
            case "...": return "S";
            case "-": return "T";
            case "..-": return "U";
            case "...-": return "V";
            case ".--": return "W";
            case "-..-": return "X";
            case "-.--": return "Y";
            case "--..": return "Z";
            case ".----": return "1";
            case "..---": return "2";
            case "...--": return "3";
            case "....-": return "4";
            case ".....": return "5";
            case "-....": return "6";
            case "--...": return "7";
            case "---..": return "8";
            case "----.": return "9";
            case "-----": return "0";
        }
        return null;
    }

}
