#!/usr/bin/env python3
# https://www.codewars.com/kata/52a382ee44408cea2500074c
# From a matrix of the form [ [a,b,c], [d,e,f], [g,h,i] ], determine the determinant.
# For a 1x1 matrix the determinant is the single constituent.
# For a 2x2 matrix [[a,b],[c,d]] the determinant is a*d - b*c
# For a 3x3 matrix with first row [a,b,c], for each element determine the determinant of
# the 2x2 matrix that doesn't include that elements row and column.
# For a 4x4 matrix, do the same process as for 3x3 until you've reduced the problem to
# 2x2 matrices.

# A 1x1 matrix becomes: a
# A 2x2 matrix becomes: a - b
# A 3x3 matrix becomes: a - b + c
# A 4x4 matrix becomes: a - b + c - d

def determinant(m):
    msize = len(m)
    if msize == 1:
        return m[0][0]

    elif msize == 2:
        return m[0][0]*m[1][1] - m[0][1]*m[1][0]

    else:
        # Recursively determine the submatrices
        final_equation = list()
        for top_index in range(msize):
            top_entry = m[0][top_index]

            submatrix = list()
            for row in m[1:]:
                submatrix.append([row[i] for i in range(msize) if i != top_index ])

            final_equation.append( top_entry * determinant(submatrix) )

        # Calculate final result by altering between addition and subtraction.
        addition = True
        result = 0
        for entry in final_equation:
            if addition:    result += entry
            else:           result -= entry
            addition = not addition

        return result
