package tonato

import "testing"

func TestToNato(t *testing.T) {
	cases := []struct {
		name string
		arg  string
		want string
	}{
		{
			name: "With all allowed special characters (,.!? and space)",
			arg:  "a, B.c?!",
			want: "Alfa , Bravo . Charlie ? !",
		}, {
			name: "",
			arg:  "Did not see that coming",
			want: "Delta India Delta November Oscar Tango Sierra Echo Echo Tango Hotel Alfa Tango Charlie Oscar Mike India November Golf",
		}, {
			name: "Ending arg exclamation mark",
			arg:  "go for it!",
			want: "Golf Oscar Foxtrot Oscar Romeo India Tango !",
		}, {
			name: "Empty string",
			arg:  "",
			want: "",
		}, {
			name: "Just a comma",
			arg:  ",",
			want: ",",
		},
	}

	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			actual := ToNato(c.arg)
			if actual != c.want {
				t.Errorf("ToNato(\"%s\") = %s, want %s", c.arg, actual, c.want)
			}
		})
	}
}
