package validbraces

var bracketMap = map[rune]rune{
	'(': ')',
	'[': ']',
	'{': '}',
}

func ValidBraces(s string) bool {
	queue := make([]rune, 0)
	for _, v := range s {
		closeBracket, isOpening := bracketMap[v]

		if isOpening {
			queue = append([]rune{closeBracket}, queue...)
		} else {
			if len(queue) == 0 || v != queue[0] {
				return false
			}

			queue = queue[1:]
		}
	}

	return len(queue) == 0
}
