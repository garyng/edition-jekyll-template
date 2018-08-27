---
title: Short circuit evaluation
subtitle:
category: Expressions and Assignments
order: 9
---

Short-circuit evaluation is a process whereby the value of an expression is determined without evaluating all of the operands and/or operators.

C# offers both short-circuiting and non-short-circuiting boolean operators {% cite Shamseer2017 --prefix short-circuit %}:

1. short-circuiting operators
    1. conditional OR, `||`
    1. conditional AND, `&&`
1. non-short-circuiting operators
    1. logical OR, `|`
    1. logical AND, `&`

Here is an example demonstrating the differences between them

```cs
bool Condition1()
{
    Console.WriteLine("\tCondition 1 is evaluated");
    return false;
}

bool Condition2()
{
    Console.WriteLine("\tCondition 2 is evaluated");
    return true;
}

Console.WriteLine("--- Conditional operators");
Console.WriteLine();
Console.WriteLine("Condition1() && Condition2()");
if (Condition1() && Condition2())
{
    // only Condition 1 is evaluated
}
Console.WriteLine();
Console.WriteLine("Condition2() || Condition1()");
if (Condition2() || Condition1())
{
    // only Condition 2 is evaluated
}
Console.WriteLine();
Console.WriteLine("Condition1() || Condition2()");
if (Condition1() || Condition2())
{
    // both are evaluated
}
Console.WriteLine();
Console.WriteLine("--- Logical operators");
Console.WriteLine();
Console.WriteLine("Condition1() & Condition2()");
if (Condition1() & Condition2())
{
    // only Condition 1 is evaluated
}
Console.WriteLine();
Console.WriteLine("Condition1() | Condition2()");
if (Condition1() | Condition2())
{
    // both are evaluated
}
```

The output:

> `Condition1()` returns `false`, while `Condition2()` returns `true`

```
--- Conditional operators

Condition1() && Condition2()
  Condition 1 is evaluated

Condition2() || Condition1()
  Condition 2 is evaluated

Condition1() || Condition2()
  Condition 1 is evaluated
  Condition 2 is evaluated

--- Logical operators

Condition1() & Condition2()
  Condition 1 is evaluated
  Condition 2 is evaluated

Condition1() | Condition2()
  Condition 1 is evaluated
  Condition 2 is evaluated
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Z8nuzH" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix short-circuit %}