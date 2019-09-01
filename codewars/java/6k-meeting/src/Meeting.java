/* https://www.codewars.com/kata/meeting
 * Input is a string with name entries of the form Firstname:Lastname;
 * The output should be of the form (LASTNAME, FIRSTNAME) sorted in alphabetical order. */

import java.util.ArrayList;
import java.util.Collections;

public class Meeting {
    public static String meeting(String s) {
        String[] people = s.split(";");
        ArrayList<String> newPeople = new ArrayList<>();
        for (String person : people) {
            String[] tempPerson = person.toUpperCase().split(":");
            newPeople.add("(" + tempPerson[1] + ", " + tempPerson[0] + ")");
        }
        Collections.sort(newPeople);

        return String.join("", newPeople);
    }
}
