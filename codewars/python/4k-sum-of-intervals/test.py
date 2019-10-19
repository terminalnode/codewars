#!/usr/bin/env python3
import unittest
from sum_of_intervals import sum_of_intervals

class TestCount(unittest.TestCase):
    def test1(self):
        self.assertEqual(sum_of_intervals([(1, 5)]), 4)
    def test1(self):
        self.assertEqual(sum_of_intervals([(1, 5), (6, 10)]), 8)
    def test1(self):
        self.assertEqual(sum_of_intervals([(1, 5), (1, 5)]), 4)
    def test1(self):
        self.assertEqual(sum_of_intervals([(1, 4), (7, 10), (3, 5)]), 7)

if __name__ == '__main__':
    unittest.main()
