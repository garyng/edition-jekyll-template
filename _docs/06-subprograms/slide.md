---
title: Slide
category: Subprograms
order: 999
layout: slide
---

# Subprograms

"methods" in C#

---

has 5 components:

1. access modifier {% fragment %}
1. return type {% fragment %}
1. method name {% fragment %}
1. parameter list {% fragment %}
1. method body {% fragment %}

---

```cs
<access modifier> <return type> <method name>(parameter list) {
   method body
}
```

---

```cs
public int Max(int first, int second)
{
    if (first > second)
    {
        return first;
    }
    return second;
}
```

---

# Access modifier

Control what code can see the method

_from another assembly, class, derived class or structs_ {% fragment %}

---

# Return type

Specifies the type of the data returned by the method {% fragment %}

---

if the method does not return any data, the return type will be

## `void` {% fragment %}

---

# `return` keyword

terminates the execution of current method {% fragment %}

and return the control back to the caller {% fragment %}

_optionally returning a value_ {% fragment %}

---

# Parameter list

Specifies the data that the method receives, along with their {% fragment %}

1. type {% fragment %}
1. name {% fragment %}

---

## Parameters vs. Argument

---

## Parameters

those that can found in the method header

---

## Arguments

are the actual values passed to the method at the calling site

---

C# support both

# Positional and keyword parameters {% fragment %}

---

C# uses **positional** binding by default

---

```cs
int Add(int first, int second, int third)
{
    return first + second + third;
}
```

```cs
result = Add(1, 2, 3);
```

---

Supports **keyword** binding with **named arguments** using the following format:

```cs
<parameter name>: <argument value>
```

---

The same method

```cs
int Add(int first, int second, int third)
{
    return first + second + third;
}
```

can be invoked with

```cs
result = Add(first: 1, second: 2, third: 3);
```

---

or even with the parameters specified **out-of-order**

```cs
result = Add(third: 3, second: 2, first: 1);
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/v4XUHK" frameborder="0"></iframe>

---

# Optional arguments

allow the caller to omit some of the arguments {% fragment %}

goes really well with named arguments {% fragment %}

---

```cs
void Print(string required, string optionalString = "Default string", int optionalNumber = 123)
{
    Console.WriteLine($"{required}, {optionalString}, {optionalNumber}");
}
```

To skip the second parameter:

```cs
Print("One", optionalNumber: 3);
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/iDiv4v" frameborder="0"></iframe>

---

# Passing parameters

C# supports both {% fragment %}

1. pass by value {% fragment %}
1. pass by reference {% fragment %}

---

![]({{site.url}}/images/posts/passing-parameters/pass-by-reference-vs-pass-by-value-animation.gif)

---

pass by reference can be achieved by using the

## `ref` or `out`

keywords

---

which we have already covered in the topic

# [Functional side effects](/04-expressions-and-assignments/functional-side-effects/) {% fragment %}

---

# But ...

## there are some differences among {% fragment %}

1. passing value-type by value {% fragment %}
1. passing reference-type by value {% fragment %}
1. passing value-type by reference {% fragment %}
1. passing reference-type by reference {% fragment %}

---

# Value-type

those that directly contains the data

1. numeric types (int, long, float, double, etc) {% fragment %}
1. bool {% fragment %}
1. structs {% fragment %}
1. enumerations {% fragment %}

---

# Reference-type

those that contains the reference to/pointer to/memory location of the data

_instead of the data itself_ {% fragment %}

1. class {% fragment %}
1. interface {% fragment %}
1. object {% fragment %}
1. string {% fragment %}
1. ... {% fragment %}

---

# Passing value-type by value

{% fragment %} Changes in the method **will not be persisted** back in the calling environment

---

# Passing reference-type by value

<span>Changes to the **memory location/pointer/reference** of the parameter **will not be persisted**</span> {% fragment %}

<span>_eg: assigning it to a new object_</span> {% fragment %}

---

## But

<span>Changes to the **content** of the parameter **will be persisted**</span> {% fragment %}

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/RekZlM" frameborder="0"></iframe>

---

## Passing value-type by reference

Changes to the parameter will be persisted {% fragment %}

---

## Passing reference-type by reference

Changes to both {% fragment %}

1. reference/pointer/memory location {% fragment %}
1. content of the parameter {% fragment %}

will be persisted {% fragment %}

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/mld3YE" frameborder="0"></iframe>

---

# Overloading

defining multiple methods with the same name but {% fragment %}

## different method signature {% fragment %}

---

```cs
void Foo(int x)
{
    Console.WriteLine("Foo(int x)");
}

void Foo(string x)
{
    Console.WriteLine("Foo(string x)");
}
```

---

note that the

# return type {% fragment %}

## is not considered as part of the method signature {% fragment %}

---

in other words, this kind of overloading is illegal

```cs
void Foo(int x)
{
    Console.WriteLine("Foo(int x)");
}

string Foo(int x)
{
    return "Foo(string x)";
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/BQSRbY" frameborder="0"></iframe>


`Compilation error (line 15, col 9): Type 'Program' already defines a member called 'Foo' with the same parameter types`

---

The end.

# Thanks! {% fragment %}
