#!/usr/bin/env python3
import unittest
from bowling_score import bowling_score

class TestNbYear(unittest.TestCase):
    def test1(self):
        self.assertEqual(bowling_score('11 11 11 11 11 11 11 11 11 11'), 20)

    def test2(self):
        self.assertEqual(bowling_score('X X X X X X X X X XXX'), 300)

if __name__ == '__main__':
    unittest.main()
