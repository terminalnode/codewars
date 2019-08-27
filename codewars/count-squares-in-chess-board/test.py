#!/usr/bin/env python3
import unittest
from count import count

class TestCount(unittest.TestCase):
    def test_full_2x2(self):
        chess_board = [
            [1,1],
            [1,1]
        ]
        self.assertEqual(count(chess_board), {2: 1}, "Should be {2: 1}.")

    def test_empty_2x2(self):
        chess_board = [
            [0,1],
            [1,1]
        ]
        self.assertEqual(count(chess_board), {}, "Should be {}.")

    def test_full_9x9(self):
        chess_board = [
            [1,1,1],
            [1,1,1],
            [1,1,1]
        ]
        self.assertEqual(count(chess_board), {2:4, 3:1}, "Should be {2:4, 3:1}.")

    def test_empty_9x9(self):
        chess_board = [
            [1,1,1],
            [1,0,1],
            [1,1,1]
        ]
        self.assertEqual(count(chess_board), {}, "Should be {}.")

    def test_mixed_5x5(self):
        chess_board = [
            [0,1,1,1,1],
            [1,1,1,1,1],
            [1,1,1,1,1],
            [0,1,1,0,1],
            [1,1,1,1,1]
        ]
        self.assertEqual(count(chess_board), {3:2, 2:9}, "Should be {3:2, 2:9}.")

if __name__ == '__main__':
    unittest.main()
