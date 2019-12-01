#!/usr/bin/env python3
# The primorial of n is the product of the n first prime numbers.
# For example, the primorial of 3 is 2*3*5 = 30.

def is_prime(n):
    """Check if a number is prime."""
    # Negative numbers, 0 and 1 are not primes.
    if n <= 1: return False

    # No number is going to be divisible by more than half of itself,
    # so there's no need to loop through more than n/2.
    for i in range(2, int(n/2) + 1):
        if n % i == 0: return False

    return True

def get_primes(n):
    primes = list()
    current = 1
    while n > 0:
        current += 1
        if is_prime(current):
            n -= 1
            primes.append(current)
    return primes

def num_primorial(n):
    product = 1
    for prime in get_primes(n):
        product *= prime
    return product

if __name__ == '__main__':
    print(sum(get_primes(1000)))
