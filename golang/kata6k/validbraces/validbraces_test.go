package validbraces

import (
	"testing"
)

func TestValidBraces(t *testing.T) {
	var cases = []struct {
		in  string
		out bool
	}{
		{"(){}[]", true},
		{"([{}])", true},
		{"(}", false},
		{"[(])", false},
		{"[({})](]", false},
		{"(((", false},
		{")))", false},
	}

	for _, c := range cases {
		actual := ValidBraces(c.in)
		if actual != c.out {
			t.Errorf("ValidBraces(\"%s\") should not have returned %t", c.in, actual)
		}
	}
}
