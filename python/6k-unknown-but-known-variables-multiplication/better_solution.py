#!/usr/bin/env python3
# From cracking the code it becomes apparent that the letters position
# in the alphabet relative to n is relevant to their value:
# l, m, n, o, p = 2, 1, 0, 1, 2
# a = 13 and is 13 letters from n.
#
# Thus it becomes apparent that the value of each letter is
# the absolute value of the difference between n and the given letter.

def get_val(variable):
    return abs(ord(variable) - ord('n'))

def the_var(the_variables):
    var1, var2 = the_variables.split('*')
    val1 = get_val(var1)
    val2 = get_val(var2)
    return val1 * val2
