package tonato

import "testing"

func TestToNato(t *testing.T) {
	cases := []struct {
		name string
		in   string
		out  string
	}{
		{
			name: "With all allowed special characters (,.!? and space)",
			in:   "a, B.c?!",
			out:  "Alfa , Bravo . Charlie ? !",
		}, {
			name: "",
			in:   "Did not see that coming",
			out:  "Delta India Delta November Oscar Tango Sierra Echo Echo Tango Hotel Alfa Tango Charlie Oscar Mike India November Golf",
		}, {
			name: "Ending in exclamation mark",
			in:   "go for it!",
			out:  "Golf Oscar Foxtrot Oscar Romeo India Tango !",
		}, {
			name: "Empty string",
			in:   "",
			out:  "",
		}, {
			name: "Just a comma",
			in:   ",",
			out:  ",",
		},
	}

	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			actual := ToNato(c.in)
			if actual != c.out {
				t.Errorf("ToNato(\"%s\") returned %s, expected %s", c.in, actual, c.out)
			}
		})
	}
}
