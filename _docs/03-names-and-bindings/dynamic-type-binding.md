---
title: Dynamic type binding
subtitle:
category: Names and Bindings
order: 5
---

Variables with the type of `dynamic` will bypass static type checking, errors will only be caught on runtime {% cite Docs2015d --prefix dynamic-type-binding %}.

```cs
dynamic number = 123;
number = number + 456;
Console.WriteLine($"Value: {number}\tType: {number.GetType()}");
```

Output:

```
Value: 579  Type: System.Int32
```

We are allowed to assign a string to the same variable (which is initially an `int`).

```
number = "a string";
Console.WriteLine($"Value: {number}\tType: {number.GetType()}");
```

Output:

```
Value: a string Type: System.String
```

Because the variable is now a string, subtracting an `int` will result in a runtime error

```cs
number = number - 1;
// ERROR: Operator '-' cannot be applied to operands of type 'string' and 'int'
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/QROE6J" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix dynamic-type-binding %}