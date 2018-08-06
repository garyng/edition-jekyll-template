---
title: Storage Binding
subtitle:
category: Names and Bindings
order: 6
---

Storage binding defines when a variable is bound to a memory cell and for how long it remains bounded. C# only has 3 binding categories:

1. [static](#static)
1. [stack-dynamic](#stack-dynamic)
1. [explicit heap-dynamic](#explicit-heap-dynamic)

## Static

In C#, local variables cannot be defined as `static`.

```cs
// ERROR: The modifier "static" is not valid for this item
static int num = 123;

void Main()
{
  // ERROR: The modifier "static" is not valid for this item
  static int age = 123;
}
```

Instead, the `static` keyword has another meaning: it is used to declare a **static member**, which belongs to the **type** itself rather than to a **specific instance** of the class {% cite Docs2015e --prefix storage-binding %}.

```cs
public class Person
{
  // static class member
  public static int Age = 123;
}
void Main()
{
  Console.WriteLine($"Age: {Person.Age}");
}
```

Output:

```
Age: 123
```

It can only be used on:

1. classes
1. fields
1. methods
1. properties
1. operators
1. events
1. constructors

## Stack-dynamic

In C#, **value types** are _often_ but, _not necessarily always_, allocated on the **stack**. This includes {% cite Cochran2006 --prefix storage-binding %}:

1. bool
1. byte
1. char
1. decimal
1. double
1. enum
1. float
1. int
1. long
1. sbyte
1. short
1. struct
1. uint
1. ulong
1. ushort

## Explicit heap-dynamic

**Reference** types are always allocated on the **heap**, which includes:

1. class
1. interface
1. delegate
1. object
1. string

The heap is managed by _Garbage Collector (GC)_, which will find all objects in the heap that are **not being accessed** and delete them.
Note that a value type will be allocated on the heap when {% cite Gabe2010 --prefix storage-binding %}:

1. it is part of a class
1. it is boxed
1. it is an array
1. it is a static variable
1. it is capture by a closure
1. … etc

## Example
<small>Adapted from {% cite Cochran2006 --prefix storage-binding %}</small>

```cs
public class MyInt
{
  public int MyValue;
}
void Main()
{
  // on stack
  int value = 123;
  
  // on heap, but the reference/pointer to the object is on the stack
  MyInt result = new MyInt();
  
  // on heap, because MyValue is part of a class (which is a reference type)
  result.MyValue = value + 200;
}
```

![]({{site.url}}/images/posts/storage-binding/stack-vs-heap-in-scope.png)

When the variables go out of scope, they are popped from the stack.

![]({{site.url}}/images/posts/storage-binding/stack-vs-heap-out-of-scope.png)

The object on the heap will eventually be collected by Garbage Collection.

![]({{site.url}}/images/posts/storage-binding/garbage-collector.png)

## References

{% bibliography --cited_in_order --prefix storage-binding %}