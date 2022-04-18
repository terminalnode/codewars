package consecutivestrings

import (
	"strings"
)

// Solution to: https://www.codewars.com/kata/56a5d994ac971f1ac500003e

func LongestConsec(strarr []string, k int) string {
	longest := ""

	for i := range strarr {
		if (i + k) > len(strarr) {
			break
		}

		strBuilder := strings.Builder{}
		for j := 0; j < k; j++ {
			strBuilder.WriteString(strarr[i+j])
		}
		out := strBuilder.String()

		if len(out) > len(longest) {
			longest = out
		}
	}

	return longest
}
