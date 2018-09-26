class LinkedList(object):
  def __init__(self):
    self.head = None

  def add(self, val):
    if self.head == None:
      self.head = self.Node(val)
    else:
      curr_node = self.head

      while curr_node.next != None:
        curr_node = curr_node.next

      curr_node.next = self.Node(val)

  def index_of(self, val):
    curr_node = self.head
    i = 0

    while curr_node != None:
      if curr_node.value == val:
        return i
      else:
        curr_node = curr_node.next
        i = i + 1

    return -1

  def contains(self, val):
    return self.index_of(val) != -1

  def remove(self, val):
    prev_node = None
    curr_node = self.head

    while curr_node != None:
      if curr_node.value == val:
        if prev_node == None:
          self.head = curr_node.next
        else:
          prev_node.next = curr_node.next

        return True
      else:
        prev_node = curr_node
        curr_node = curr_node.next

    return False

  class Node(object):
    def __init__(self, val):
      self.value = val
      self.next = None

