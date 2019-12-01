#!/usr/bin/env python3
import unittest
from nb_year import nb_year

class TestNbYear(unittest.TestCase):
    def test1(self):
        self.assertEqual(nb_year(1500, 5, 100, 5000), 15)

    def test2(self):
        self.assertEqual(nb_year(1500000, 2.5, 10000, 2000000), 10)

    def test3(self):
        self.assertEqual(nb_year(1500000, 0.25, 1000, 2000000), 94)

if __name__ == '__main__':
    unittest.main()
