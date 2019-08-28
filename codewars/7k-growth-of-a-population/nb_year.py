#!/usr/bin/env python3

def nb_year(p0, percent, aug, p):
    year = 0
    while p0 < p:
        year += 1
        p0 = p0 + (p0 * percent * 0.01) + aug
    return year
