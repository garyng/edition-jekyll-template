---
title: Method overloading
subtitle:
category: Subprograms
order: 4
---

Overloading is a process where multiple methods with the **same name** but **different signatures** are defined. In C#, overloads are resolved at compile-time. Note that the **return type** of a method is **not** considered to be a part of a method's signature {% cite Skeet --prefix method-overloading %}.

Example:

```
void Foo(int x)
{
    Console.WriteLine("Foo(int x)");
}

void Foo(string x)
{
    Console.WriteLine("Foo(string x)");
}
```

Calling with

```
Foo(1);
Foo("String");
```

will output:

```
Foo(int x)
Foo(string x)
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/QJPbGn" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix method-overloading %}