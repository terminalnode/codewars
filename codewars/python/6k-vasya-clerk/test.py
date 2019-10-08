#!/usr/bin/env python3
import unittest
from tickets import tickets

class TestCount(unittest.TestCase):
    def test1(self):
        self.assertEqual(tickets([25,25,50]), "YES")
    def test2(self):
        self.assertEqual(tickets([25,100]), "NO")
    def test3(self):
        self.assertEqual(tickets([25,25,50,50,100]), "NO")

if __name__ == '__main__':
    unittest.main()
