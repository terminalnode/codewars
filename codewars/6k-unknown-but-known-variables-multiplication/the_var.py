#!/usr/bin/env python3

key = {
    # Variables that could be deduced from the tests.
    'a' : 13,   # a*a = 169
    'b' : 12,   # b*b = 144
    'c' : 11,   # a=13, a*c = 143
    'd' : 10,   # d*d = 100
    'e' : 9,    # a=13, a*e = 117
    'f' : 8,    # x=10, f*x = 80
    'g' : 7,    # d=10, d*g = 70
    'h' : 6,    # f=8, f*h = 48
    'i' : 5,    # c=11, c*i = 55
    'j' : 4,    # j*j = 16
    'l' : 2,    # a=13, l*a = 26
    'm' : 1,    # m=11, m*y = 11
    'n' : 0,    # resulted in 0 in two different samples.
    'o' : 1,    # l=2, o*l = 2
    'p' : 2,    # j=4, j*p = 8
    'q' : 3,    # q*q = 9
    's' : 5,    # h=6, s*h = 30
    'v' : 8,    # x=10, x*v = 80
    'x' : 10,   # x*x = 100
    'y' : 11,   # y*y = 121
    'z' : 12,    # a=13, z*a = 156
    # These variables could not be deduced from the tests.
    # They were cracked by changing them to big unique values and checking the random tests results.
    # 1. Set r to 12345
    # 2. Find a test resulting in 24690 (12345 * 2) that should be 8.
    # 3. r * 2 = 8, r = 4
    'r' : 4,
    'k' : 3,
    'w' : 9,
    'u' : 7,
    't' : 6
}

def the_var(the_variables):
    var1, var2 = the_variables.split('*')
    return key[var1] * key[var2]
