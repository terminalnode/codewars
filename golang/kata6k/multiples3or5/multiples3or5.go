package multiples3or5

// Solution to: https://www.codewars.com/kata/514b92a657cdc65150000006

func Multiple3And5(n int) int {
	sum := 0

	for i := 0; i < n; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}

	return sum
}