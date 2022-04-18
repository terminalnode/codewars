package tonato

// Solution to: https://www.codewars.com/kata/586538146b56991861000293

import (
	"fmt"
	"strings"
)

func ToNato(s string) string {
	nato := []string{
		"Alfa", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot",
		"Golf", "Hotel", "India", "Juliett", "Kilo", "Lima", "Mike",
		"November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra",
		"Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu",
	}

	s = strings.ToLower(s)
	out := strings.Builder{}
	for _, v := range s {
		if v == ' ' {
			continue
		} else if v == ',' || v == '.' || v == '!' || v == '?' {
			out.WriteString(fmt.Sprintf("%c ", v))
		} else {
			out.WriteString(fmt.Sprintf("%s ", nato[v-'a']))
		}
	}

	return strings.TrimSpace(out.String())
}
