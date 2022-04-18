package multiples3or5

import (
	"fmt"
	"testing"
)

func TestMultiple3And5(t *testing.T) {
	tests := []struct {
		arg  int
		want int
	}{
		{arg: 10, want: 23},
	}
	for _, tt := range tests {
		t.Run(fmt.Sprintf("Multiple3And5(%d)", tt.arg), func(t *testing.T) {
			if got := Multiple3And5(tt.arg); got != tt.want {
				t.Errorf("Multiple3And5() = %v, want %v", got, tt.want)
			}
		})
	}
}
