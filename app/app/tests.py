from django.test import TestCase
from .calc import add, subtract

class CalcTests(TestCase):

    # note: test underscore is important
    def test_add_number(self):
        """Two numbers are added together"""
        self.assertEqual(add(3, 8), 11)

    def test_subtract_number(self):
        """Two numbers are subtracted"""
        self.assertEqual(subtract(5, 11), 6)

