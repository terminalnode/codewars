package tocamelcase

// Solution to: https://www.codewars.com/kata/517abf86da9663f1d2000003

import (
	"fmt"
	"strings"
)

func ToCamelCase(s string) string {
	out := strings.Builder{}
	capitalize := false

	for _, v := range s {
		if v == '-' || v == '_' {
			capitalize = true
		} else {
			char := fmt.Sprintf("%c", v)
			if capitalize {
				capitalize = false
				char = strings.ToUpper(char)
			}
			out.WriteString(char)
		}
	}

	return out.String()
}
