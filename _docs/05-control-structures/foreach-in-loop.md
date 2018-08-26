---
title: foreach...in loop
subtitle:
category: Control Structures
order: 8
---

`foreach` statement provide a simpler way to iterate over a **collection of elements**. It can be used with types that implement the `System.Collections.IEnumerable` or `System.Collections.Generic.IEnumerable<T>` interface. Examples of those types include:

1. arrays
1. `List<T>`
1. `Dictionary<TKey,TValue>`
1. `Queue<T>`
1. `SortedList<TKey,TValue>`
1. `Stack<T> Class`
1. … etc

{% cite Docs2018f --prefix foreach-in-loop %}

The structure of a `foreach…in` loop is as follow:

```cs
foreach (type name in collection)
{
    body
}
```

where

1. `type` is the type of the elements inside the `collection`, `var` keyword can also be used here
1. `collection` is the groups of elements to be iterated

For example, this for loop that print out all the elements in an array

```cs
int[] nums = {1, 2, 3, 45, 6, 7, 8, 9};
for (int i = 0; i < nums.Length; i++)
{
    Console.WriteLine(nums[i]);
}
```

can be written using `foreach…in` loop

```cs
int[] nums = {1, 2, 3, 45, 6, 7, 8, 9};

foreach (int num in nums)
{
    Console.WriteLine(num);
}
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/ccSWJd" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix foreach-in-loop %}