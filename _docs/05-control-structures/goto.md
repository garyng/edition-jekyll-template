---
title: goto
subtitle:
category: Control Structures
order: 11
---

The `goto` statement transfers the control of the program immediately to a **labeled** statement {% cite Docs2015p --prefix goto %}.

Even though `goto` is useful in jumping out of a _deeply nested loop_, the use of goto statement is highly **discouraged** as it often results in _spaghetti code_:

> …widespread and unconstrained use of GOTO statements has led to programmers producing **inconsistent**, **incomplete** and generally **unmaintainable** programs.  
> Such code is often known as ‘spaghetti’, given its convoluted and tangled control structure.
> 
> {% cite Cram2005 --prefix goto %}

The previous nested `for` loop

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

can be written using `goto` as

```cs
for (int i = 0; i < 10; i++)
{
    for (int j = 0; j < 10; j++)
    {
        if (j > i)
        {
            goto outer;
        }
        Console.Write($"{j}");
    }
outer:
    Console.WriteLine();
}
```

Note that we need a label (`outer:` in the example above) to indicate the position we want the program control to go.

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/TJTzv9" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix goto %}