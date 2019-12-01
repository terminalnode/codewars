#!/usr/bin/env python3
import unittest
from buddy import buddy

class TestCount(unittest.TestCase):
    def test1(self):
        self.assertEqual(buddy(10, 50), [48, 75])
        self.assertEqual(buddy(2177, 4357), "Nothing")
        self.assertEqual(buddy(57345, 90061), [62744, 75495])
        self.assertEqual(buddy(1071625, 1103735), [1081184, 1331967])

if __name__ == '__main__':
    unittest.main()
