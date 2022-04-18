package tonato

import "testing"

func TestToNato(t *testing.T) {
	cases := []struct {
		in  string
		out string
	}{
		{
			in:  "If you can read",
			out: "India Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta",
		}, {
			in:  "Did not see that coming",
			out: "Delta India Delta November Oscar Tango Sierra Echo Echo Tango Hotel Alfa Tango Charlie Oscar Mike India November Golf",
		}, {
			in:  "go for it!",
			out: "Golf Oscar Foxtrot Oscar Romeo India Tango !",
		}, {
			in:  "",
			out: "",
		}, {
			in:  ",",
			out: ",",
		},
	}

	for _, c := range cases {
		actual := ToNato(c.in)
		if actual != c.out {
			t.Errorf("ToNato(\"%s\") returned %s, expected %s", c.in, actual, c.out)
		}
	}
}
