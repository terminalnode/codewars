package consecutivestrings

import "testing"

type args struct {
	strarr []string
	k      int
}

var tests = []struct {
	name string
	args args
	want string
}{
	{
		name: "Base case 1 (k-value of 2)",
		args: args{k: 2, strarr: []string{"zone", "abigail", "theta", "form", "libe", "zas"}},
		want: "abigailtheta",
	}, {
		name: "k-value of 1",
		args: args{k: 1, strarr: []string{"ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"}},
		want: "oocccffuucccjjjkkkjyyyeehh",
	}, {
		name: "Empty string array",
		args: args{k: 2, strarr: []string{}},
		want: "",
	}, {
		name: "Base case 2 (k-value of 2)",
		args: args{k: 2, strarr: []string{"itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv", "vweqilsfytihvrzlaodfixoyxvyuyvgpck"}},
		want: "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck",
	},
}

func TestLongestConsec(t *testing.T) {
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := LongestConsec(tt.args.strarr, tt.args.k); got != tt.want {
				t.Errorf("LongestConsec() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestBetterSolution(t *testing.T) {
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := BetterSolution(tt.args.strarr, tt.args.k); got != tt.want {
				t.Errorf("BetterSolution() = %v, want %v", got, tt.want)
			}
		})
	}
}
