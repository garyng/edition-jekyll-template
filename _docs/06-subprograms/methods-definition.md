---
title: Methods definition
subtitle:
category: Subprograms
order: 1
---

Subprograms, or subroutines, are block of code that contains a series of statements and can be invoked from other remote locations in a program {% cite Shute --prefix methods-definition %}.

In C#, subprograms are known as “**methods**” and consists of {% cite Point2018 --prefix methods-definition %}:

1. [access modifier](#access-modifier)
1. [return type](#return-type)
1. method name
1. [parameter list](#parameter-list)
1. method body

There are also other optional modifiers like `abstract`, `virtual`, `async`, `override`, `partial`, `static`, etc.

```cs
<access modifier> <return type> <method name>(parameter list) {
   method body
}
```

Here is a simple example of a method called `Max` that receives 2 parameters `first` and `second` and returns an `int`.

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

#### Access modifier

Access modifiers control whether a particular method can be used from other assemblies, from other classes or structs, or inside derived classes. There are 5 types of accessibility levels in C# {% cite Docs2015q --prefix methods-definition %}:

1. `public`
1. `private`
1. `protected`
1. `internal`
1. `protected internal`
1. `private internal`

#### Return type

A method may return a value to the caller and the return type of the method is the data type of the value being returned. If the method does not return any value, the return type will be `void`.

The `return` keyword is used to terminate the execution of current method and transfer the control back to the caller, _optionally_ returning a value. However, `return` is not required for `void` methods {% cite Docs2015r --prefix methods-definition %}.

For example, this is a method `Max` that returns an `int`:

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

Here is a `void` method that uses a `return` statement for early exiting of the function. The pattern is commonly known as "_guard clauses_" {% cite Cunningham&Cunningham --prefix methods-definition %}.

```cs
public void Initialize(string name, int age)
{
    if (string.IsNullOrEmpty(name)) return;
    if (age < 0) return;

    // ... other operations
}
```

#### Parameter list

Parameters are used for passing data to the method. A parameter list is a list of parameters along with their:

1. name
1. type

that are enclosed within a pair of parenthesis. The **order** of the parameters in the list is also important to the caller. Note that parameters are **optional**; that is - a method may not receive any parameters.

##### Parameters vs. Arguments

The method definition specifies the **parameters** that are required; the caller specifies the **arguments** that contains the concrete values for the parameters.

In the following example: `a` is the argument (from the caller side); while `num` is a parameter (for the method `Square`).

```cs
void Main()
{
    int a = 1;
    // a is the argument
    Square(a);
}

// num is a parameter
int Square(int num)
{
    return num * num;
}
```

## References

{% bibliography --cited_in_order --prefix methods-definition %}