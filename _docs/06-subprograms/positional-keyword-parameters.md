---
title: Positional and keyword parameters
subtitle:
category: Subprograms
order: 2
---

In C#, arguments are bound to parameters based on their **position** (or order) by default; but C# also supports keyword parameters through the use of **named arguments** {% cite Docs2015s --prefix positional-keyword %}.

Take this `Add` method as an example:

```cs
int Add(int first, int second, int third)
{
    return first + second + third;
}
```

## Positional

This is the default way of how arguments and parameters are bound to each other:

```cs
void Main()
{
    int result = 0;
    result = Add(1, 2, 3);
    Console.WriteLine(result);
}
```

## Named

The caller can specify the value of a parameter by associating the **argument** with the **parameter's name** in the following format:

`<parameter name>: <argument value>`

The same method previously can also be invoked with:

```cs
result = Add(first: 1, second: 2, third: 3);
```

or even **out-of-order**:

```cs
result = Add(third: 3, second: 2, first: 1);
```

However, named arguments must be placed **before** any **fix arguments**. Thus the following code is invalid:

```cs
// ERROR: CS8323 Named argument is used out-of-position but is followed by an unnamed argument
result = Add(third: 3, 2, 1);
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/v4XUHK" frameborder="0"></iframe>

Named arguments are commonly used to convey the _intent_ of the argument. Without looking at the definition of the method, which one is better?

```cs
Init(true, false, true);
```
vs.

```cs
Init(isProcessDataRequired: true,
     isDiplayDataRequired: false,
     isSaveDataRequired: true);
```

## Optional

Optional arguments allow the caller to omit arguments for some parameters. The omitted parameter will use the default value defined in the method header.

For example:

```cs
void Print(string required, string optionalString = "Default string", int optionalNumber = 123)
{
    Console.WriteLine($"{required}, {optionalString}, {optionalNumber}");
}
```

Can be called with:

```cs
Print("One");
Print("One", "Two");
Print("One", "Two", 3);
```

Output:

```
One, Default string, 123
One, Two, 123
One, Two, 3
```

By default, the arguments are **positional**, but **named arguments** can also be used to specify the value of the optional parameter.

For example, to skip the second parameter `optionalString`:

```cs
Print("One", optionalNumber: 3);
```

Output:

```
One, Default string, 3
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/iDiv4v" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix positional-keyword %}