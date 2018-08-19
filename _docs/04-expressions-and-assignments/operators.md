---
title: Operators
subtitle:
category: Expressions and Assignments
order: 3
---

## Types of operator

1. [unary operators](#unary-operators)
1. [binary operators](#binary-operators)
1. [ternary operators](#ternary-operators)

{% cite Docs2015f --prefix operators %}

#### Unary operators

Operators that take 1 operand. For example,

1. increment operator, `++`
1. new operator, `new Friend();`
1. … etc

#### Binary operators

Operators that take 2 operands. For example,

1. arithmetic operators
    1. addition, `+`
    1. subtraction, `-`
    1. multiplication, `*`
    1. division, `/`
    1. modulo, `%`
1. logical operators
    1. Logical AND, `x & y`
    1. Logical XOR, `x ^ y`
    1. Logical OR, `x | y`
    1. Conditional AND, `x && y`
    1. Conditional OR, `x || y`
1. .. etc

#### Ternary operators

Operators that take 3 operands. The only ternary operator in C# is the **conditional operator**, `?:` {% cite Docs2015g --prefix operators %}

For example, this `if-else` statement

```cs
if (input > 0)
{
    classify = "positive";
}
else
{
    classify = "negative";
}
```

can be written as

```cs
classify = (input > 0) ? "positive" : "negative";
```

## References

{% bibliography --cited_in_order --prefix operators %}