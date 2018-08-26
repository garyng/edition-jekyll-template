---
title: do...while loop
subtitle:
category: Control Structures
order: 6
---

The structure of the `do...while` loop is as follow:

```cs
do
{
    statements
} while (condition);
```

As the `condition` is evaluated after executing the `statements`, `do…while` loop is guaranteed to be executed **at least once** {% cite Docs2018d --prefix do-while-loop %}.

```cs
int x = 10;
do
{
    Console.WriteLine($"Value of x: {x}");
    x++;
} while (x < 20);
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
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/IR8TIT" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix do-while-loop %}