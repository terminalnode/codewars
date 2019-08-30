#!/usr/bin/env python3
import unittest
from determinant import determinant

class TestNbYear(unittest.TestCase):
    def test1(self):
        m = [ [1] ]
        self.assertEqual(determinant(m), 1)

    def test2(self):
        m = [ [1,3], [2,5] ]
        self.assertEqual(determinant(m), -1)

    def test3(self):
        m = [ [2,5,3], [1,-2,-1], [1,3,4] ]
        self.assertEqual(determinant(m), -20)

if __name__ == '__main__':
    unittest.main()
