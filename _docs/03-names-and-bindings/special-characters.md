---
title: Special characters
subtitle:
category: Names and Bindings
order: 2
---

Special characters are used to modify the program element which they prefixed. C# supports the following special characters {% cite Docs2017a --prefix special-characters %}:

1. [@, the verbatim identifier character](#-the-verbatim-identifier-character)
1. [$, the interpolated string character](#-the-interpolated-string-character)

## @, the verbatim identifier character

The verbatim character can be used to

1. [enable **keywords** to be used as **identifiers**](#1-enable-keywords-to-be-used-as-identifiers)
1. [indicate that a string is a “verbatim string literal”](#2-indicate-that-a-string-is-a-verbatim-string-literal)
    1. [**escape sequences** are ignored](#11-escape-sequences-are-ignored)
    1. [can be used to define **multiline** string](#12-can-be-used-to-define-multiline-string)

#### 1. enable keywords to be used as identifiers

This is illegal in C#:

```cs
string string = "this is a string";
```

But this is a valid syntax:

```cs
string @string = "this is a string";
Console.WriteLine(@string);
```

##### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Vp7jjY" frameborder="0"></iframe>

#### 2. indicate that a string is a “verbatim string literal”

##### 1.1 escape sequences are ignored

```cs
string normal = "first line \n second line";
string verbatim = @"first line \n second line";
Console.WriteLine(normal);
// --- output:
// first line 
//	second line

Console.WriteLine(verbatim);
// --- output:
// first line \n second line
```

which is commonly used for specifying _file paths_ in Windows

```cs
// need to use '\' to escape the backslash character
string filename1 = "c:\\documents\\files\\u0066.txt";
// ignore escape sequences
string filename2 = @"c:\documents\files\u0066.txt";

Console.WriteLine(filename1);
// --- output:
// c:\documents\files\u0066.txt

Console.WriteLine(filename2);
// --- output:
// c:\documents\files\u0066.txt
```

##### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/c7LIEt" frameborder="0"></iframe>

#### 1.2 can be used to define multiline string

```cs
string normal = "line1\nline2\nline3\n---";
string verbatim = @"line1
line2
line3
---";
Console.WriteLine(normal);
Console.WriteLine(verbatim);
```

Output:

```
line1
line2
line3
---
line1
line2
line3
---
```

##### Live-code example

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/MiLJFw" frameborder="0"></iframe>

## $, the interpolated string character

Provide a more readable and convenient syntax to format strings {% cite Docs2018 --prefix special-characters %}.

Using this code snippet as an example:

```cs
double price = 12.456;
string name = "Lorem Ipsum";
DateTime paidOn = new DateTime(2018, 1, 1, 12, 34, 56);
```

Instead of doing this to join different variables together

```cs
// instead of doing this
string normal = name + " paid " + price.ToString("0.00") + " on " + paidOn.ToString("yyyy-MM-dd HH:mm:ss");

// Note: 00.00 -> numbers are formatted into 2 decimal places, padded with zeros
```

String interpolation is much simpler

```cs
// you can do this
string interpolated = $"{name} paid {price:0.00} on {paidOn:yyyy-MM-dd HH:mm:ss}";

Console.WriteLine(normal);
Console.WriteLine(interpolated);
```

Output:

```
Lorem Ipsum paid 12.46 on 2018-01-01 12:34:56
Lorem Ipsum paid 12.46 on 2018-01-01 12:34:56
```

## References

{% bibliography --cited_in_order --prefix special-characters %}