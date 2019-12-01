#!/usr/bin/env python3
import unittest
# from the_var import the_var
from better_solution import the_var

class TestTheVar(unittest.TestCase):
    def test1(self):
        self.assertEqual(the_var("j*p"), 8)

    def test2(self):
        self.assertEqual(the_var("o*l"), 2)

    def test3(self):
        self.assertEqual(the_var("a*n"), 0)

    def test4(self):
        self.assertEqual(the_var("y*y"), 121)

    def test5(self):
        self.assertEqual(the_var("a*c"), 143)

    def test6(self):
        self.assertEqual(the_var("o*l"), 2)

    def test7(self):
        self.assertEqual(the_var("j*p"), 8)

    def test8(self):
        self.assertEqual(the_var("a*e"), 117)

    def test9(self):
        self.assertEqual(the_var("n*z"), 0)

    def test10(self):
        self.assertEqual(the_var("m*y"), 11)

    def test11(self):
        self.assertEqual(the_var("d*d"), 100)

    def test12(self):
        self.assertEqual(the_var("d*g"), 70)

    def test13(self):
        self.assertEqual(the_var("c*i"), 55)

    def test14(self):
        self.assertEqual(the_var("l*a"), 26)

    def test15(self):
        self.assertEqual(the_var("f*h"), 48)

    def test16(self):
        self.assertEqual(the_var("z*a"), 156)

    def test17(self):
        self.assertEqual(the_var("x*v"), 80)

    def test18(self):
        self.assertEqual(the_var("q*q"), 9)

    def test19(self):
        self.assertEqual(the_var("b*b"), 144)

    def test20(self):
        self.assertEqual(the_var("s*h"), 30)

    def test21(self):
        self.assertEqual(the_var("d*e"), 90)

    def test22(self):
        self.assertEqual(the_var("b*h"), 72)

    def test23(self):
        self.assertEqual(the_var("x*x"), 100)

    def test24(self):
        self.assertEqual(the_var("f*x"), 80)

    def test25(self):
        self.assertEqual(the_var("j*j"), 16)

if __name__ == '__main__':
    unittest.main()
