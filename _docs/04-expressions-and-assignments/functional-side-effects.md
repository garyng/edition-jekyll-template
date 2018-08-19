---
title: Functional side effects
subtitle:
category: Expressions and Assignments
order: 6
---

Functional side effects occur when functions

1. modify a global variable, or
1. [modify one of its parameters](#modifying-one-of-its-parameters)

## Modifying one of its parameters

Mutations made by the function will **persist** only if the parameters are **passed by reference**, which can be achieved using either the keyword `ref` or `out`.

For example,

```cs
int fun1(ref int num)
{
    num = 100;
    return 10;
}

void main()
{
    int a = 2;
    a = fun1(ref a) + a;
    Console.WriteLine(a);
}
```

The output will be `110`

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/D02EAT" frameborder="0"></iframe>

However, the variable will **not be modified** if there is no `ref` or `out` keyword:

```cs
int fun1(int num)
{
    num = 100;
    return 10;
}

void main()
{
    int a = 2;
    a = fun1(a) + a;
    Console.WriteLine(a);
}
```

The result will be `12`

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/C4K2RF" frameborder="0"></iframe>

The difference between `ref` and `out` is that `ref` parameter **must be initialized** before it is passed; while `out` parameter **do not have to be explicitly initialized** before they are passed {% cite Docs2018a --prefix side-effects %}.


## References

{% bibliography --cited_in_order --prefix side-effects %}