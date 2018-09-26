using System;
using System.Collections.Generic;
using System.Text;

namespace DataStructures.LinkedList
{
  interface IList<TData>
  {
    void Add(TData value);
    bool Remove(TData value);
    bool Contains(TData value);
    int IndexOf(TData value);
  }
}