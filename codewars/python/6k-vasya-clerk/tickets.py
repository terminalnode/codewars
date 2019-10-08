# https://www.codewars.com/kata/vasya-clerk
# Vasya is selling tickets to a new movie, in line are a number
# of people carrying 25, 50 and 100 dollar bills. A ticket costs
# 25 dollars. Will Vasya have the right number of bills to give
# everyone in line the correct amount of change?

def tickets(people):
    bills = { 25 : 0, 50 : 0 }
    for person in people:
        if person == 25:
            bills[25] += 1
        elif person == 50:
            bills[25] -= 1
            bills[50] += 1
        else:
            if bills[50] > 0:
                bills[50] -= 1
                bills[25] -= 1
            else:
                bills[25] -= 3

        if bills[25] < 0:
            return "NO"
    return "YES"
