---
title: for loop
subtitle:
category: Control Structures
order: 7
---

The structure of a `for` loop is as follow:

```cs
for (initializer; condition; iterator)
{
    body
}
```

The `body` of the for loop is executed when the `condition` evaluates to `true`.

A `for` loop consists of main 3 parts:

1. initializer
1. condition
1. iterator

{% cite Docs2018e --prefix for-loop %}

#### `initializer`

> The statements in the initializer section are executed **first** and executed only **once** before entering the loop.

This is usually where a _local loop variable_ is declared and initialized.

#### `condition`

> The condition section is a `Boolean` expression which is evaluated **before** every iteration.

The for loop will **stop** executing when it evaluates to `false`.

#### `iterator`

> The statements in the iterator section are executed **after** each iteration.

This is usually where the loop variable is incremented or decremented.

## Example

The same example used in `while` and `do…while` loop can be written using for loop, which is more concise:

```cs
for (int x = 10; x < 20; x++)
{
    Console.WriteLine($"Value of x: {x}");
}
```

Output:

```
Value of x: 10
Value of x: 11
Value of x: 12
Value of x: 13
Value of x: 14
Value of x: 15
Value of x: 16
Value of x: 17
Value of x: 18
Value of x: 19
```

In this case,

| Initializer  | Condition | Iterator |
| ------------ | --------- | -------- |
| `int x = 10` | `x < 20`  | `x++`    |

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/GYSteF" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix for-loop %}