---
title: Type conversion
subtitle:
category: Expressions and Assignments
order: 7
---

Type conversion is a process where data of one type is converted into data of another type {% cite Docs2015i --prefix type-conversion %}. C# has 2 forms of type conversions:

1. [implicit conversions](#implicit-conversions)
1. [explicit conversions](#explicit-type-conversion) (or type casting)

## Implicit conversions

The conversions are performed by C# in a _type-safe_ manner, most of which are **widening conversion**.

For example, conversions

1. [from smaller to larger integral types](#from-smaller-to-larger-integral-types)
1. [from derived classes to base classes](#from-derived-classes-to-base-classes)

#### from smaller to larger integral types

```cs
int num1 = 10;
double num2 = num1;
```

#### from derived classes to base classes

```cs
Derived d = new Derived();
Base b = d;
```

## Explicit type conversion

_Casting_ is required when **information might be lost** in the conversion, which is also known as a **narrowing conversion**. Explicit conversions require a cast operator in the form of `(<target_type>)<data>`.

For example, conversions

1. [from larger to smaller integral types](#from-larger-to-smaller-integral-types)
1. [from base class to child class](#from-base-class-to-child-class)

#### from larger to smaller integral types

```cs
double num1 = 10;
// int num2 = num1; // error
int num2 = (int)num1;
```

#### from base class to child class

```cs
Derived d = new Derived();
Base b = d;

// Derived d2 = b; // error
Derived d2 = (Derived)b;
```

## References

{% bibliography --cited_in_order --prefix type-conversion %}