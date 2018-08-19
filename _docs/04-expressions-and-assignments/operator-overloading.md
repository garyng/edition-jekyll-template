---
title: Operator overloading
subtitle:
category: Expressions and Assignments
order: 5
---

In C#, _user-defined types_ can define custom behaviors for certain operators with static member functions using the `operator` keyword. However, not all operators can be overloaded, and some of them have certain restrictions {% cite Docs2015h --prefix operator-overloading %}

| Operators                             | Description                   |
| ------------------------------------- | ----------------------------- |
| +, -, !, ~, ++, --                    | Can be overloaded             |
| +, -, *, /, %                         | Can be overloaded             |
| ==, !=, , <=, >=                      | Can be overloaded             |
| &&, \|\|                              | Cannot be overloaded directly |
| +=, -=, *=, /=, %=                    | Cannot be overloaded directly |
| =, ., ?:, ->, new, is, sizeof, typeof | Cannot be overloaded          |

## Example: `Fraction`

```cs
public class Fraction
{
    private int _numerator;
    private int _denominator;

    public Fraction(int numerator, int denominator)
    {
        _numerator = numerator;
        _denominator = denominator;
    }

    public double Value => ((double)_numerator) / _denominator;

    public static Fraction operator +(Fraction first, Fraction second)
    {
        int numerator = first._numerator * second._denominator + second._numerator * first._denominator;
        int denominator = first._denominator * second._denominator;

        return new Fraction(numerator, denominator);
    }
}
```

To see the class in action,

```cs
Fraction f1 = new Fraction(2, 3);
Fraction f2 = new Fraction(3, 5);

Fraction result = f1 + f2;  // adding 2 fractions together
Console.WriteLine(result.Value);
```

Output:

```
1.26666666666667
```

which is equivalent to `2 / 3 + 3 / 5`.

The method

```cs
public static Fraction operator +(Fraction first, Fraction second)
```
overload the operator `+` to provide **custom logic** for adding two fractions.


#### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/1mBSYH" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix operator-overloading %}