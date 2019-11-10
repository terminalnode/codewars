#!/usr/bin/env python3
import unittest
from knight import knight

class TestCount(unittest.TestCase):
    def test1(self): self.assertEqual(knight("a1", "c1"), 2)
    def test2(self): self.assertEqual(knight("a1", "f1"), 3)
    def test3(self): self.assertEqual(knight("a1", "f3"), 3)
    def test4(self): self.assertEqual(knight("a1", "f4"), 4)
    def test5(self): self.assertEqual(knight("a1", "f7"), 5)

if __name__ == '__main__':
    unittest.main()
