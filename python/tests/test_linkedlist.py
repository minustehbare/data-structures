from context import LinkedList

import unittest

class LinkedListTest(unittest.TestCase):

  def test_add(self):
    l = LinkedList()

    l.add(9)
    l.add(99)
    l.add(999)

    self.assertEqual(l.index_of(9), 0)
    self.assertEqual(l.index_of(99), 1)
    self.assertEqual(l.index_of(999), 2)

  def test_index_of(self):
    l = LinkedList()

    l.add(9)

    self.assertEqual(l.index_of(9), 0)
    self.assertEqual(l.index_of(99), -1)

  def test_contains(self):
    l = LinkedList()

    l.add(9)

    self.assertEqual(l.contains(9), True)
    self.assertEqual(l.contains(99), False)

  def test_remove(self):
    l = LinkedList()
    l.add(9)
    l.add(99)
    l.add(999)

    success = l.remove(99)

    self.assertEqual(success, True)
    self.assertEqual(l.index_of(9), 0)
    self.assertEqual(l.index_of(999), 1)

