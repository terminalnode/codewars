# https://www.codewars.com/kata/pyramid-array
# Write a function that when given a number >= 0 returns
# a list of ascending length subarrays filled with 1s.
#
# pyramid(0) should be [ ]
# pyramid(1) should be [ [1] ]
# pyramid(2) should be [ [1], [1,1] ]
# etc
def pyramid(n):
    result = []
    for i in range(1, n + 1):
        result.append( [1 for j in range(i)] )
    return result

# Huh, apparently you can also do list * n to get
# a repetition of a list. Lots of solutions simply
# did [ [1]*n for i in range(1, n+1) ].
