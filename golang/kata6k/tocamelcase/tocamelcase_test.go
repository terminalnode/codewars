package tocamelcase

import "testing"

func TestToCamelCase(t *testing.T) {
	tests := []struct {
		name string
		arg  string
		want string
	}{
		{name: "lower-kebab-case", arg: "the-stealth-warrior", want: "theStealthWarrior"},
		{name: "Upper-Kebab-Case", arg: "The-Stealth-Warrior", want: "TheStealthWarrior"},
		{name: "Mixed-kebab-Case", arg: "The-stealth-Warrior", want: "TheStealthWarrior"},
		{name: "lower_snake_case", arg: "the_stealth_warrior", want: "theStealthWarrior"},
		{name: "Upper_Snake_Case", arg: "The_Stealth_Warrior", want: "TheStealthWarrior"},
		{name: "Mixed_snake_Case", arg: "The_stealth_Warrior", want: "TheStealthWarrior"},
		{name: "Empty string", arg: "", want: ""},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := ToCamelCase(tt.arg); got != tt.want {
				t.Errorf("ToCamelCase(\"%s\") = %s, want %s", tt.arg, got, tt.want)
			}
		})
	}
}
