---
title: Operator precedence and associativity
subtitle:
category: Expressions and Assignments
order: 4
---

An expression can contain multiple operators – in that case, when two operators share an operand, the **order** in which the operators are applied is determined by

1. operator precedence
1. associativity, and
1. [parentheses](#parenthesis)

{% cite Docs2015g --prefix operators-associativity %}

For example,

```
3 + 4 * 5
```

is treated as

```
3 + (4 * 5)
```

which evaluates to `23` because multiplication `*` has _higher precedence_ over addition `+`.

Here is a list of almost all operators in C#, sorted in their order of precedence.

| Category       | Operator                                             | Associativity |
| -------------- | ---------------------------------------------------- | ------------- |
| Postfix        | () [] -> . ++ --                         | Left to right |
| Unary          | + - ! ~ ++ -- (type)* & sizeof     | Right to left |
| Multiplicative | * / %                                          | Left to right |
| Additive       | + -                                              | Left to right |
| Shift          | << >>                                            | Left to right |
| Relational     | < <= > >=                                    | Left to right |
| Equality       | == !=                                            | Left to right |
| Bitwise AND    | &                                                  | Left to right |
| Bitwise XOR    | ^                                                  | Left to right |
| Bitwise OR     | \|                                                  | Left to right |
| Logical AND    | &&                                                 | Left to right |
| Logical OR     | \|\|                                                 | Left to right |
| Conditional    | ?:                                                 | Right to left |
| Assignment     | = += -= *= /= %=>>= <<= &= ^= \|= | Right to left |
| Comma          | ,                                                  | Left to right |

## Parenthesis

The implied evaluation order can be changed by using parenthesis. For example,

```
(3 + 4) * 5
```

results in `35` because the _addition_ operator is evaluated first, even though the _multiplication_ operator has higher precedence

## References

{% bibliography --cited_in_order --prefix precedence-associativity %}