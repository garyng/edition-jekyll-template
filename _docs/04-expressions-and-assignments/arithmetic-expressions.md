---
title: Arithmetic expressions
subtitle:
category: Expressions and Assignments
order: 2
---

An arithmetic expression is an expression built up using

1. numbers
1. arithmetic operators (such as `+`, `-`, `*`, `/`), and
1. parentheses

{% cite Wagner2001 --prefix arithmetic-expressions %}

## Arithmetic operators

In C#, the primary arithmetic operators are:

| Operators | Description    |
| --------- | -------------- |
| - (unary) | Negation       |
| *         | Multiplication |
| /         | Division       |
| +         | Addition       |
| -         | Subtraction    |
| %         | Modulo         |

{% cite Techotopia2016 --prefix arithmetic-expressions %}

Here is a simple example demonstrating some of the operators:

```cs
Console.WriteLine(1 + 2);   // 3
Console.WriteLine(1 - -2);  // 3
Console.WriteLine(1 * 2);   // 2
Console.WriteLine(1 / 2);   // 0
Console.WriteLine(1 / 2.0); // 0.5
Console.WriteLine(5 % 3);   // 2
```

#### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/cEdjlF" frameborder="0"></iframe>

## Mixed mode arithmetic operations

In C#, an arithmetic expression can contain operands of different integral type. However, the resulting type will often be the **larger** integral type (**_widening_ assignment coercions**). For example,

```cs
int a = 1;
double b = 1.2;

var result = a + b;
Console.WriteLine(result.GetType());
```

The output will be
```
System.Double
```

#### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/sv0S4d" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix arithmetic-expressions %}