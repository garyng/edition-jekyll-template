---
title: if statements
subtitle:
category: Control Structures
order: 2
---

An if statement identifies which block code to run based on the value of a `Boolean` expression {% cite Docs2015k --prefix if-statements %}

```cs
bool condition = true;

if (condition)
{
    Console.WriteLine("The variable is set to true.");
}
else
{
    Console.WriteLine("The variable is set to false.");
}
```

Output:

```
The variable is set to true.
```

If the condition is set to `false`:

```cs
bool condition = false;

if (condition)
{
    Console.WriteLine("The variable is set to true.");
}
else
{
    Console.WriteLine("The variable is set to false.");
}
```

Output:

```
The variable is set to false.
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/CAqeg8" frameborder="0"></iframe>

The `else` part of the `if-else` statement is **optional**:

```cs
bool condition = true;

if (condition)
{
    Console.WriteLine("The variable is set to true.");
}
Console.WriteLine("This will always be printed.");
```

Output:

```
The variable is set to true.
This will always be printed.
```

## Nested if-else
If-else statements can be _nested_ as well in which **multiple** conditions can be tested.

```cs
bool condition1 = true;
bool condition2 = false;

if (condition1)
{
    if (condition2)
    {
        Console.WriteLine("condition1 and condition2 is true");
    }
    else
    {
        Console.WriteLine("condition1 is true but condition2 is false");
    }
}
else
{
    Console.WriteLine("condition1 is false");
}
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/ZJWMYC" frameborder="0"></iframe>

Here is another example that test whether the user input is a letter, then check whether it is uppercase or lowercase:

``` cs
Console.Write("Enter a character: ");
char c = (char)Console.ReadLine()[0];
if (Char.IsLetter(c))
{
    if (Char.IsLower(c))
    {
        Console.WriteLine("The character is lowercase.");
    }
    else
    {
        Console.WriteLine("The character is uppercase.");
    }
}
else
{
    Console.WriteLine("The character isn't an alphabetic character.");
}
```

Sample output (try it on the live-code example below!): 

```
Enter a character: a
The character is lowercase.
Enter a character: A
The character is uppercase.
Enter a character: 1
The character isn't an alphabetic character.
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/kSwhxV" frameborder="0"></iframe>

## else if

Other than _nesting_ `if-else` statements, the `else if` clause can be used to test multiple condition. The same example above can be written as:

```cs
Console.Write("Enter a character: ");
char c = (char)Console.ReadLine()[0];
if (Char.IsLower(c))
{
    Console.WriteLine("The character is lowercase.");
}
else if (Char.IsUpper(c))
{
    Console.WriteLine("The character is uppercase.");
}
else if (Char.IsDigit(c))
{
    Console.WriteLine("The character is a digit");
}
else
{
    Console.WriteLine("The character isn't an alphabetic character.");
}
```

Sample output:

```
Enter a character: a
The character is lowercase.
Enter a character: B
The character is uppercase.
Enter a character: 1
The character is a digit
Enter a character: )
The character isn't an alphabetic character.
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/3aAC8t" frameborder="0"></iframe>

## Logical operators

[As we have covered earlier]({% link _docs/04-expressions-and-assignments/short-circuit-evaluation.md %}), we can use logical operators to make a compound condition.

#### NOT

```cs
// Logical NOT, !
bool result = true;
if (!result)
{
    Console.WriteLine("result is not true");
}
else
{
    Console.WriteLine("result is not false");
}
```

#### AND

```cs
// AND, &&
int m = 9;
int n = 7;
int p = 5;
if (m >= n && m >= p)
{
    Console.WriteLine("Nothing is larger than m.");
}
```

#### OR

```
// OR, ||
if (m > n || m > p)
{
    Console.WriteLine("m isn't the smallest.");
}
```

#### Combined

```cs
// AND and NOT
if (m >= n && !(p > m))
{
    Console.WriteLine("Nothing is larger than m.");
}

// NOT and OR
m = 4;
if (!(m >= n || m >= p))
{
    Console.WriteLine("Now m is the smallest.");
}
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/02uQvo" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix if-statements %}