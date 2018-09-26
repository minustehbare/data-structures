using System;
using System.Collections.Generic;
using System.Text;

namespace DataStructures.LinkedList
{
  public class SinglyLinkedList<TData> : IList<TData>
  {
    public Node Head { get; private set; }

    public void Add(TData value)
    {
      Node n = new Node(value: value);

      if (Head == null)
      {
        Head = n;
      }
      else
      {
        Node current = Head;

        while (current.Next != null)
        {
          current = current.Next;
        }

        current.SetNext(next: n);
      }
    }

    public bool Contains(TData value)
    {
      return IndexOf(value: value) != -1;
    }

    public int IndexOf(TData value)
    {
      int i = 0;
      Node current = Head;

      while (current != null)
      {
        if (current.Value.Equals(obj: value))
        {
          return i;
        }
        else
        {
          current = current.Next;
          i = i + 1;
        }
      }

      return -1;
    }

    public bool Remove(TData value)
    {
      Node previous = null;
      Node current = Head;

      while (current != null)
      {
        if (current.Value.Equals(obj: value))
        {
          if (previous == null)
          {
            Head = current.Next;
          }
          else
          {
            previous.SetNext(next: current.Next);
          }

          return true;
        }
        else
        {
          previous = current;
          current = current.Next;
        }
      }

      return false;
    }

    public class Node
    {
      public TData Value { get; private set; }
      public Node Next { get; private set; }
      public bool HasNext { get => Next != null; }

      public void SetNext(Node next)
      {
        Next = next;
      }

      public Node(TData value)
      {
        Value = value;
      }
    }
  }
}
