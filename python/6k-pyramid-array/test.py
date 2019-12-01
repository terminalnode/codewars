#!/usr/bin/env python3
import unittest
from pyramid import pyramid

class TestCount(unittest.TestCase):
    def test0(self): self.assertEqual(pyramid(0), [])
    def test1(self): self.assertEqual(pyramid(1), [[1]])
    def test2(self): self.assertEqual(pyramid(2), [[1],[1,1]])
    def test3(self): self.assertEqual(pyramid(3), [[1],[1,1],[1,1,1]])

if __name__ == '__main__':
    unittest.main()
