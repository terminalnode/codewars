#!/usr/bin/env python3
# https://www.codewars.com/kata/growth-of-a-population/python

# p0 is starting population
# percent is how much the population is growing each year
# aug is how many people arrive or leave the town apart from regular growth
# p is the target population size
# 
# The function returns the first year after which the population size
# will have become equal or greater than the target population size.

def nb_year(p0, percent, aug, p):
    year = 0
    while p0 < p:
        year += 1
        p0 = p0 + (p0 * percent * 0.01) + aug
    return year
