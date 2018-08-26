---
title: continue
subtitle:
category: Control Structures
order: 10
---

Different from `break`, the `continue` statement **does not terminate** the loop, instead it passes the control to the **next iteration** {% cite Docs2015o --prefix continue %}.

Using the previous example

```cs
for (int i = 0; i <= 10; i++)
{
    if (i == 5)
    {
        continue;
    }
    Console.WriteLine(i);
}
```

The output will be:

```
0
1
2
3
4
6
7
8
9
10
```

where only the number `5` is skipped.

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/V5xJrn" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix continue %}