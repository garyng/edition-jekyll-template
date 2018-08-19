---
title: Expressions
subtitle:
category: Expressions and Assignments
order: 1
---

An expression is a sequence of

1. one or more **operands**, and
1. or more **operators**

that can be evaluated into some value {% cite Docs2017c --prefix expressions %}.

In C#, expressions can consist of

1. literal value
    - `1`, `“abc”`
1. method invocation
    - `CallMe()`
1. operator and operands
    - `1 + 2 - 3`
1. simple name
    - variable: `num`, `age`
    - method parameter: `CallMe(myNumber)`

There are also other types of expressions, for example:

1. LINQ query expressions {% cite Docs2016 --prefix expressions %}
    ```cs
    IEnumerable<int> scoreQuery =
        from score in scores
        where score > 80
        select score;
    ```
1. lambda expressions, `(int x, string s) => s.Length > x`

## References

{% bibliography --cited_in_order --prefix expressions %}