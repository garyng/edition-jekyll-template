---
title: while loop
subtitle:
category: Control Structures
order: 5
---

The structure of `while` loop is as follow:

```cs
while (condition)
{
    statements
}
```

The `condition` is tested before the `statements` in the body of the while loop is executed. Hence, `while` loop executes **zero or more times** {% cite Docs2018c --prefix while-loop %}.

```cs
int x = 10;
while (x < 20)
{
    Console.WriteLine($"Value of x: {x}");
    x++;
}
```

Output:

```
Value of x: 10
Value of x: 11
Value of x: 12
Value of x: 13
Value of x: 14
Value of x: 15
Value of x: 16
Value of x: 17
Value of x: 18
Value of x: 19
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/h6F4f2" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix while-loop %}