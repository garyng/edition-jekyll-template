---
title: Scoping
subtitle:
category: Names and Bindings
order: 7
---

C# only support static scoping (also known as **lexical scoping**), where the scope of a variable is determined when the code is compiled {% cite Rouse2011 --prefix scoping %}.

```cs
public class Program
{
  int num;

  static void Func1()
  {
    int num = 123;
  }

  public static void Main()
  {
    int num = 567;
    Func1();
    Console.WriteLine($"num1: {num}");
  }
}
```

The output is

```
num1: 567
```

instead of `123` as defined in `Func1()` (if C# uses dynamic scoping).

## Live-code exmaple

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/nCtmnU" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix scoping %}