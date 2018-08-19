---
title: Boolean expressions
subtitle:
category: Expressions and Assignments
order: 8
---

Boolean expressions are those that always evaluate to either `true` or `false`. Here are some examples of operators that usually can be found within a boolean expression:

1. relational and equality operators
1. logical negation, `!`
1. type operators

## Relational expressions

A relational expression consists of two or more expressions whose values are compared to determine whether the relationship stated by the relational operator is satisfied {% cite Schmalzl1999 --prefix boolean-expressions %}.

Example of relational and equality operators:

| Expression | Description           |
| ---------- | --------------------- |
| x < y      | Less than             |
| x > y      | Greater than          |
| x <= y     | Less than or equal    |
| x >= y     | Greater than or equal |
| x == y     | Equal                 |
| x != y     | Not equal             |

```cs
Console.WriteLine($"1 > 2 is {1 > 2}");
Console.WriteLine($"1 < 2 is {1 < 2}");
Console.WriteLine($"1 <= 1 is {1 <= 1}");
Console.WriteLine($"2 >= 2 is {2 >= 2}");
Console.WriteLine($"2 == 2 is {2 == 2}");
Console.WriteLine($"2 != 2 is {2 != 2}");
```

The output:

```
1 > 2 is False
1 < 2 is True
1 <= 1 is True
2 >= 2 is True
2 == 2 is True
2 != 2 is False
```

#### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/ejmawU" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix boolean-expressions %}