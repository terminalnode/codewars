import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* PHONE DIRECTORY
 * https://www.codewars.com/kata/phone-directory/
 * Some guy named John keeps the worst organised phonebook backup ever.
 * On each line in a text file he has the following elements in random order:
 *  - +X-xxx-xxx-xxxx where X is one or two digits and each x is one digit.
 *  - The owner's name between < and > (e.g. <Dijkstra Edsger W.>)
 *  - An address which can be just about anything.
 * Our mission is to parse this mess and return the owner of a specific phone number.
 *
 * The input is the entire phone book and a phone number. Parse the file, then return
 * the owner of the phone number in this format if a unique match is found:
 * "Phone => num, Name => str, Address => str"
 * If multiple matches are found:
 * "Error => Too many people: number"
 * If no matches are found:
 * "Error => Not found: number"
*/
class PhoneDir {
    static String phone(String textFile, String queryNumber) {
        String[] phonebookData = textFile.split("\\n");

        // phonebook key is the phoneNumber, String[] is a 2-size String Array with name and address
        HashMap<String, String[]> phonebook = new HashMap<>();
        Pattern numberPattern = Pattern.compile("\\+[\\d-]+");
        Pattern namePattern = Pattern.compile("<.*>");
        for (String entry : phonebookData) {
            // Get number
            Matcher numberMatcher = numberPattern.matcher(entry);
            numberMatcher.find();
            String entryNumber = numberMatcher.group().replace("+", "");

            // Get name
            Matcher nameMatcher = namePattern.matcher(entry);
            nameMatcher.find();
            String entryName = nameMatcher.group().replaceAll("[<>]", "");

            // Get address
            String entryAddress = entry
                    .replace(entryNumber, "")
                    .replace(entryName, "")
                    .replaceAll("[^\\w^\\s\\-\\.]", "")
                    .replaceAll("\\s+|\\_", " ")
                    .strip();

            // Add to phonebook
            if (!phonebook.containsKey(entryNumber)) {
                String[] newEntry = {entryName, entryAddress};
                phonebook.put(entryNumber, newEntry);
            } else {
                String[] currentEntry = phonebook.get(entryNumber);
                if (currentEntry != null && !currentEntry[0].equals(entryName)) {
                    phonebook.put(entryNumber, null);
                }
            }
        }

        if (phonebook.containsKey(queryNumber)) {
            String[] result = phonebook.get(queryNumber);
            if (result != null) {
                return String.format("Phone => %s, Name => %s, Address => %s", queryNumber, result[0], result[1]);
            } else {
                return String.format("Error => Too many people: %s", queryNumber);
            }
        } else {
            return String.format("Error => Not found: %s", queryNumber);
        }
    }
}