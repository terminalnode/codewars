#!/usr/bin/env python3
import unittest
from primorial import num_primorial as primorial

class TestCount(unittest.TestCase):
    def test1(self):
        self.assertEqual(primorial(3), 30)
    def test2(self):
        self.assertEqual(primorial(4), 210)
    def test3(self):
        self.assertEqual(primorial(5), 2310)
    def test4(self):
        self.assertEqual(primorial(8), 9699690)
    def test5(self):
        self.assertEqual(primorial(9), 223092870)

    def test_stress(self):
        """Stress test to more easily spot differences in performance."""
        primorial100 = 4711930799906184953162487834760260422020574773409675520188634839616415335845034221205289256705544681972439104097777157991804380284218315038719444943990492579030720635990538452312528339864352999310398481791730017201031090
        for i in range(10000):
            self.assertEqual(primorial(100), primorial100)

if __name__ == '__main__':
    unittest.main()
