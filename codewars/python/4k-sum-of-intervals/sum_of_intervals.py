# https://www.codewars.com/kata/sum-of-intervals/
# Calculate the sum of a list of intervalls. If there is an overlap
# the overlapping regions should only be counted once.
# Thus [(1,4), (3,5)] can be considered the same as [(1,5)].

def sum_of_intervals(intervals):
    intervalConstituents = set()
    for interval in intervals:
        for i in range(interval[0], interval[1]):
            intervalConstituents.add(i)
    return len(intervalConstituents)
