#!/usr/bin/env python3
# https://www.codewars.com/kata/buddy-pairs
# Find two "buddy" numbers such that the sum of all
# their proper divisors are equal to the other number + 1.
# The two numbers must be between the provided start and limit (inclusive).
#
# Example:
# Divisors of 48 are: 1, 2, 3, 4, 6, 8, 12, 16, 24 --> sum: 76 = 75 + 1
# Divisors of 75 are: 1, 3, 5, 15, 25 --> sum: 49 = 48 + 1
# Return value: [48, 75]

import math

def find_divisor_sum(n):
    result = 1  # All natural numbers are divisible by 1
    limit = int(math.sqrt(n)) + 1

    for divisor in range(2, limit):
        if n % divisor == 0:
            result += divisor
            divisor_pair = n / divisor
            if divisor_pair != divisor: result += divisor_pair

    return int(result)

def buddy(start, limit):
    for i in range(start, limit+1):
        candidate = find_divisor_sum(i) - 1
        if candidate < i: continue

        if find_divisor_sum(candidate) == i + 1:
            return [i, candidate]

    # Return default value if nothing is found
    return "Nothing"

if __name__ == '__main__':
    print(buddy(48,48))

