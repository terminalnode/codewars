#!/usr/bin/env python3
# https://www.codewars.com/kata/count-squares-in-the-chess-board/python

# For a given square matrix given in the form of a list of lists:
# chessBoard = [
#   [1, 1, 1],
#   [1, 1, 1],
#   [1, 1, 1]
# ]
# Find all sub-squares that has only ones and return
# a dictionary of the form: {2:3, 3:1} (for the square above)

def validate_point(chessBoard, xcoord, ycoord, maxcoord):
    """See what the largest possible square from a certain point is."""
    for i in range(maxcoord - 1):
        summed = 0

        width = maxcoord - i
        for row in chessBoard[xcoord : xcoord + width]:
            summed += sum(row[ycoord : ycoord + width])
            if summed == width*width:
                return width
    return None

def count(chessBoard):
    result = dict()
    dimensions = len(chessBoard)
    points = list()

    for x in range(dimensions - 1):
        xmaximum = dimensions - x
        for y in range(dimensions - 1):
            max = min(xmaximum, dimensions - y)
            biggest_square = validate_point(chessBoard, x, y, max)
            if biggest_square != None:
                for i in range(2, biggest_square + 1):
                    if i not in result:
                        result[i] = 1
                    else:
                        result[i] += 1

    return result

if __name__ == '__main__':
    chess_board = [
        [1,1,1,1],
        [1,0,1,1],
        [1,0,1,1],
        [1,1,1,1]
    ]
    chess_board = [
        [1,1,1],
        [1,1,1],
        [1,1,1]
    ]
    count(chess_board)
