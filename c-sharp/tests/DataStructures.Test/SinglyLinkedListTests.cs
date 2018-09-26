using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataStructures.LinkedList;
using System.Collections.Generic;
namespace DataStructures.Test
{
  [TestClass]
  public class SinglyLinkedListTest
  {
    [TestMethod]
    public void Add()
    {
      SinglyLinkedList<int> list = new SinglyLinkedList<int>();

      list.Add(value: 9);
      list.Add(value: 99);
      list.Add(value: 0);

      Assert.AreEqual(expected: 0, actual: list.IndexOf(value: 9));
      Assert.AreEqual(expected: 1, actual: list.IndexOf(value: 99));
      Assert.AreEqual(expected: 2, actual: list.IndexOf(value: 0));
    }

    [TestMethod]
    public void Remove()
    {
      SinglyLinkedList<int> list = new SinglyLinkedList<int>();
      list.Add(value: 9);
      list.Add(value: 99);
      list.Add(value: 0);

      list.Remove(value: 99);

      Assert.AreEqual(expected: 0, actual: list.IndexOf(value: 9));
      Assert.AreEqual(expected: -1, actual: list.IndexOf(value: 99));
      Assert.AreEqual(expected: 1, actual: list.IndexOf(value: 0));
    }

    [TestMethod]
    public void IndexOf()
    {
      SinglyLinkedList<int> list = new SinglyLinkedList<int>();

      list.Add(value: 9);
      list.Add(value: 99);

      Assert.AreEqual(expected: 0, actual: list.IndexOf(value: 9));
      Assert.AreEqual(expected: 1, actual: list.IndexOf(value: 99));
    }

    [TestMethod]
    public void Contains()
    {
      SinglyLinkedList<int> list = new SinglyLinkedList<int>();

      list.Add(value: 9);

      Assert.AreEqual(expected: true, actual: list.Contains(value: 9));
      Assert.AreEqual(expected: false, actual: list.Contains(value: 99));
    }
  }
}
