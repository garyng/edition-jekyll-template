---
title: Declarations
subtitle:
category: Names and Bindings
order: 4
---

## Explicit declarations
Explicit declaration is where the type of the variables is specified during declaration.

```cs
int age = 23;
string name = "Lorem Ipsum";
double money = 123.45;

Console.WriteLine($"Type of age: {age.GetType()}");
Console.WriteLine($"Type of name: {name.GetType()}");
Console.WriteLine($"Type of money: {money.GetType()}");
```

Output:

```
Type of age: System.Int32
Type of name: System.String
Type of money: System.Double
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/mHOUwC" frameborder="0"></iframe>

## Implicit declarations

C# compiler uses type inferencing to deduce the actual type of the variable declared with the keyword `var`. Note that {% cite Docs2015c --prefix declarations %}

1. `var` keyword can **only** be used for variables declared at **method scope**
1. an implicitly declared variable is **strongly typed** (just as if you had declared the type yourself), which is different from the [`dynamic` type]({% link _docs/03-names-and-bindings/dynamic-type-binding.md %}).

```cs
var age = 23;
var name = "Lorem Ipsum";
var money = 123.45;

Console.WriteLine($"Type of age: {age.GetType()}");
Console.WriteLine($"Type of name: {name.GetType()}");
Console.WriteLine($"Type of money: {money.GetType()}");
```

Output:

```
Type of age: System.Int32
Type of name: System.String
Type of money: System.Double
```

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Pm8uu8" frameborder="0"></iframe>

This is not allowed since `age` is statically-typed (as `int`)

```cs
// ERROR: Cannot implicitly convert type "string" to "int"
age = "123";
```

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/VitbMw" frameborder="0"></iframe>

Implicit declaration is extremely useful for creating **anonymous classes**, which are used extensively in LINQ operation.

```cs
var anony = new {
  Name = "Lorem Ipsum",
  Age = 23,
  Money = 123.45
};
Console.WriteLine($"Type: {anony.GetType()}");
Console.WriteLine($"Name: {anony.Name} Age: {anony.Age} Money: {anony.Money}");
```

Output:

```
Type: <> f__AnonymousType0`3[System.String, System.Int32, System.Double]      <-- this will be different
Name: Lorem Ipsum Age: 23 Money: 123.45
```

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/MGwPaP" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix declarations %}