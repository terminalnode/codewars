package validbraces

import (
	"testing"
)

func TestValidBraces(t *testing.T) {
	var cases = []struct {
		arg  string
		want bool
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
		t.Run(c.arg, func(t *testing.T) {
			actual := ValidBraces(c.arg)
			if actual != c.want {
				t.Errorf("ValidBraces(\"%s\") = %t, want %t", c.arg, actual, c.want)
			}
		})
	}
}
