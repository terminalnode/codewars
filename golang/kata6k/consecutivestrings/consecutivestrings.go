package consecutivestrings

import (
	"strings"
)

// Solution to: https://www.codewars.com/kata/56a5d994ac971f1ac500003e

func BetterSolution(strarr []string, k int) string {
	// Own implementation of better solutions on codewars
	longest := ""

	for i := 0; i < len(strarr)-k+1; i++ {
		concat := strings.Join(strarr[i:i+k], "")
		if len(concat) > len(longest) {
			longest = concat
		}
	}

	return longest
}

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
