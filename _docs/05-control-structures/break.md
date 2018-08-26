---
title: break
subtitle:
category: Control Structures
order: 9
---

A `break` statement will terminate

1. the closest enclosing loop, or
1. the switch statement

and return the program control to the statements right after the terminated statements {% cite Docs2015n --prefix break %}.

For example

```cs
for (int i = 0; i <= 10; i++)
{
    if (i == 5)
    {
        break;
    }
    Console.WriteLine(i);
}
```

will print:

```
0
1
2
3
4
```

because the for loop is terminated when `i` is 5.

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/EnDBIp" frameborder="0"></iframe>

When break is used within a **nested loop**, it will only terminate the **closest enclosing loop** and return the control to the **outer loop**.

For example

```cs
for (int i = 0; i < 10; i++)
{
    for (int j = 0; j < 10; j++)
    {
        if (j > i)
        {
            break;
        }
        Console.Write($"{j}");
    }
    Console.WriteLine();
}
```

Output:

```
0
01
012
0123
01234
012345
0123456
01234567
012345678
0123456789
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Cfzvx5" frameborder="0"></iframe>

As discussed earlier, `break` statement is also used in `switch` statements.

## References

{% bibliography --cited_in_order --prefix break %}