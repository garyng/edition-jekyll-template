---
title: Slides
category: Training
order: 999
layout: slide
theme : "white"
customTheme: font-override
highlightTheme: "vs"
# for vscode-jekyll
transition: "slide"    
slideNumber: c/t
defaultTiming: 20
---

# C# Short Training Session

Group `hello`

<aside class="notes">
start speaker notes and start `Mono`
</aside>

---

slide link

http://gg.gg/tpl2141-cs-training

---

C# shares a similar syntax with

# `C++` and `Java`

<small>hopefully it is easy enough for you all to learn</small>  <!-- .element: class="fragment" -->

---

# Printing

`Console.Write(...)` <!-- .element: class="fragment" -->

<small>keep the cursor on the same line</small> <!-- .element: class="fragment" -->

`Console.WriteLine(...)` <!-- .element: class="fragment" -->

<small>push the cursor down the next line</small> <!-- .element: class="fragment" -->

---

equivalent to

# C++'s

`cout << ...` <!-- .element: class="fragment" -->

`cout << ... << endl` <!-- .element: class="fragment" -->

---

... and also Java's

`System.out.print(...)` <!-- .element: class="fragment" -->

`System.out.println(...)` <!-- .element: class="fragment" -->

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Qznkta" frameborder="0"></iframe>

---

`using System;`

<span>similar to C++'s `#import` and</span> <!-- .element: class="fragment" -->

<span>Java's `import`</span> <!-- .element: class="fragment" -->

---

# Input

`Console.ReadLine(...)`

<span>C++'s `getline` and Java's `scanner.nextLine()`</span>

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/05pSMU" frameborder="0"></iframe>

---

# String interpolation

---

instead of writing this

`Console.WriteLine("Next year you will be " + (age + 1) + " years old.");` <!-- .element: class="fragment" -->

<span>using manual _string concatenation_</span> <!-- .element: class="fragment" -->

---

you can write it like this

`Console.WriteLine($"Next year you will be {age + 1} years old.");`

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/eXOWst" frameborder="0"></iframe>

---

## Syntax

`$"... {<expression for evaluation>} ..."`

_we will be using this from now on_ <!-- .element: class="fragment" -->

---

# Data types

---

```cs
byte bit = 0;
short age = 10;
int num = 20;
long length = 30_000_000_000L;
```

---

unsigned:

```cs
// ushort age = -10;   // only positive
ushort age1 = 10;
uint num1 = 20;
ulong length1 = 30UL;
```

---

real numbers:

```cs
float weight = 2.5F;
double total = 3.5;
decimal price = 4.5M;
```

---

boolean:

```cs
bool isChecked = false;
```

---

characters and strings:

```cs
char grade = 'A';
string name = "Lorem";
```

---

numbers are assumed to be `int`

<span>real numbers are assumed to be `double`</span> <!-- .element: class="fragment" -->

<span>**numeric type suffixes** are used to change it</span> <!-- .element: class="fragment" -->

---

# Numeric type suffixes

https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/value-types-table

---

| Type      | Type suffix |
| --------- | ----------- |
| `long`    | `L`         |
| `ulong`   | `UL`        |
| `float`   | `F`         |
| `double`  | `D`         |
| `decimal` | `M`         |

---

# Digits separator

`long length = 30_000_000_000L;` <!-- .element: class="fragment" -->

to improve readability of large numbers <!-- .element: class="fragment" -->

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/pYxszs" frameborder="0"></iframe>

---

# Arrays

```cs
int[] numbers = new int[5];    // must specify size
numbers[0] = 1;
numbers[1] = 2;
numbers[2] = 3;
numbers[3] = 4;
numbers[4] = 5;

Console.WriteLine($"numbers[0] = {numbers[0]}");
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/qpGasl" frameborder="0"></iframe>

---

## Declaration and initialization

by placing the initial values inside a pair of curly braces

```cs
int[] numbers = new int[] { 1, 2, 3, 4, 5 };
// the compiler will determine the length
Console.WriteLine($"Size: {numbers.Length}");
Console.WriteLine($"numbers[2]: {numbers[2]}");
```
<!-- .element: class="fragment" -->

---

### array initializer

```cs
int[] numbers2 = { 1, 2, 3, 4, 5 };
```

where you can omit the `new int[]` part

---

you can even omit the data type and use `var`

```cs
// the compiler will infer the type
// in this case it would be an array of int
var numbers3 = new[] { 1, 2, 3, 4, 5 };

Console.WriteLine($"numbers3's type: {numbers3.GetType()}");
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/FCYAGE" frameborder="0"></iframe>

---

# Lists

like arrays, but they are **dynamically-sized**

```cs
// need not to specify size
List<int> numbers = new List<int>();
```

---

before using `List<T>`

you need to add this using statement

```cs
using System.Collections.Generic;
```

https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.list-1?view=netframework-4.7.2

---

add values using the `.Add()` method

```cs
numbers.Add(1);
numbers.Add(2);
numbers.Add(3);
```

---

accessing the list

```cs
Console.WriteLine($"numbers[0]: {numbers[0]}");
```

---

retrieving the number of elements

```cs
Console.WriteLine($"Size: {numbers.Count}");  
numbers.Add(4);
Console.WriteLine($"Size: {numbers.Count}");
```

<small>`.Count` is used instead of `.Length`</small> <!-- .element: class="fragment" -->

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/AEgtE2" frameborder="0"></iframe>

---

combining declaration and initialization

`List<int> numbers = new List<int>() { 1, 2, 3, 4, 5 };`

---

or use `var` to minimize typing

`var numbers1 = new List<int>() { 1, 2, 3, 4, 5 };`

---

other examples

```cs
var names = new List<string>() { "Lorem", "Ipsum", "Lazy", "Fox" };
var scores = new List<double>() { 100.0, 90.0, 80.0 };
var students = new List<Student> {
    new Student("Lorem", 123),
    new Student("Ipsum", 33),
    new Student("Lazy", 13)
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/8UqxzP" frameborder="0"></iframe>

---

you can use the `foreach` loop to go through each element in an array

```cs
List<string> names = new List<string>() { "Lorem", "Ipsum", "Lazy", "Fox" };
foreach (var name in names)
{
    Console.WriteLine(name);
}
```

---

the same thing in one line using `lambda` expression

```cs
names.ForEach(name => Console.WriteLine(name));
```

<span>lambda expression is basically an **anonymous function**</span> <!-- .element: class="fragment" -->

<small>_a method without a name_</small> <!-- .element: class="fragment" -->

---

or even more concisely with **method reference**

```cs
names.ForEach(Console.WriteLine);
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/sQ2x4V" frameborder="0"></iframe>

---

other than `foreach` loop, there are also

1. `for` loop
1. `while` loop
1. `do...while` loop

---

## `for` loop

```cs
List<string> names = new List<string>() { "Lorem", "Ipsum", "Lazy", "Fox" };

for (int i = 0; i < names.Count; i++)
{
    Console.WriteLine($"#{i}: {names[i]}");
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/O75uUc" frameborder="0"></iframe>

---

## `while` loop

```cs
List<string> names = new List<string>() { "Lorem", "Ipsum", "Lazy", "Fox" };

int j = 0;
while (j < names.Count)
{
    Console.WriteLine($"#{j}: {names[j]}");
    j++;
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/e9xLTK" frameborder="0"></iframe>

---

## `do...while` loop

```cs
List<string> names = new List<string>() { "Lorem", "Ipsum", "Lazy", "Fox" };

int k = 0;
do
{
    // error when the size is zero
    Console.WriteLine($"#{k}: {names[k]}");
    k++;
} while (k < names.Count);
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/P9pG1F" frameborder="0"></iframe>

---

arithmetic is fairly straightforward:

```cs
Console.WriteLine($"1 + 2 = {1 + 2}");  // addition
Console.WriteLine($"1 - 2 = {1 - 2}");  // subtraction
Console.WriteLine($"2 * 3 = {2 * 3}");  // multiplication
Console.WriteLine($"4 / 5 = {4 / 5}");  // integer division
Console.WriteLine($"4 / 5.0 = {4 / 5.0}");  // floating-point division
Console.WriteLine($"1 + 2 * 3 = {1 + 2 * 3}");  // operator precedence
Console.WriteLine($"4 % 5 = {4 % 5}");  // modulus
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/kHGBDG" frameborder="0"></iframe>

---

shorthand notations

```cs
int num = 1;
num = num + 1;

Console.WriteLine(num);

num += 1;  // -=, *=, /=
Console.WriteLine(num);

num++;  // --
Console.WriteLine(num);
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/glv9sN" frameborder="0"></iframe>

---

more mathematical functions

```cs
Console.WriteLine($"Math.Pow(2, 10) = {Math.Pow(2, 10)}");
Console.WriteLine($"Math.Sqrt(1024) = {Math.Sqrt(1024)}");
Console.WriteLine($"Math.Round(10.12) = {Math.Round(10.12)}");
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/woCDdK" frameborder="0"></iframe>

---

relational operators

```cs
Console.WriteLine($"3 == 2 is {3 == 2}");
Console.WriteLine($"3 != 2 is {3 != 2}");
Console.WriteLine($"3 < 2 is {3 < 2}");
Console.WriteLine($"3 <= 2 is {3 <= 2}");
Console.WriteLine($"3 > 2 is {3 > 2}");
Console.WriteLine($"3 >= 2 is {3 >= 2}");
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/KDPJ5c" frameborder="0"></iframe>

---

# selection statments

1. `if`
1. ternary
1. `switch`

---

## `if` statement

```cs
char c = 'a';
if (Char.IsLower(c)) {
    Console.WriteLine("The character is lowercase.");
} else if (Char.IsUpper(c)) {
    Console.WriteLine("The character is uppercase.");
} else if (Char.IsDigit(c)) {
    Console.WriteLine("The character is a digit");
} else {
    Console.WriteLine("The character isn't an alphabetic character.");
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/quhoqG" frameborder="0"></iframe>

---

# ternary

essentially a one-liner for `if...else`

---

this code

```cs
string classify = "";
int input = -100;
if (input > 0)
{
    classify = "positive";
}
else
{
    classify = "negative";
}
Console.WriteLine($"{input} is {classify}");
```

can be rewritten as

```cs
classify = num > 0 ? "positive" : "negative";
Console.WriteLine($"{num} is {classify}");
```

---

or more concisely

```cs
Console.WriteLine($"{num} is { (num > 0 ? "positive" : "negative") }");
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/qIkASN" frameborder="0"></iframe>

---

logical operators

1. NOT, `!`
1. AND, `&&`
1. OR, `||`

---

```cs
char c = '$';
if (!char.IsLetter(c) && !char.IsDigit(c))
{
    Console.WriteLine($"{c} is neither a letter nor a digit");
}
else
{
    Console.WriteLine($"{c} is a letter or a digit");
}
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/MuhoLx" frameborder="0"></iframe>

---

# `switch` statement

```cs
DayOfWeek today = DateTime.Now.DayOfWeek;
// DayOfWeek is an enum
switch (today)
{
    case DayOfWeek.Monday:
        Console.WriteLine("Monday blue...");
        break;
    case DayOfWeek.Tuesday:
    case DayOfWeek.Wednesday:
    case DayOfWeek.Thursday:
        Console.WriteLine("Work work work work work work...");
        break;
    case DayOfWeek.Friday:
        Console.WriteLine("Party!");
        break;
    case DayOfWeek.Saturday:
    case DayOfWeek.Sunday:
        Console.WriteLine("Sleepppp");
        break;
}
```

<small>for each `case`, it's either you have something with a `break` or `return`, or you have nothing</small> <!-- .element: class="fragment" -->

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/dFLUPp" frameborder="0"></iframe>

---

# methods

```cs
public int Sum(int a, int b, int c)
{
    return a + b + c;
}
```

`Console.WriteLine(Sum(1, 2, 3));`

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/wBnjWr" frameborder="0"></iframe>

---

to receive a variable number of arguments

use the <!-- .element: class="fragment" -->

<h1>`params` keyword</h1> <!-- .element: class="fragment" -->

---

the same `Sum` method rewritten to receive any number of arguments

```cs
public int Sum(params int[] numbers) {
    int result = 0;
    foreach (var num in numbers) {
        result += num;
    }
    return result;
}
```

all of these calls are valid:

```cs
Console.WriteLine(Sum(1, 2, 3, 4, 5));
Console.WriteLine(Sum(1, 2));
Console.WriteLine(Sum(1));
Console.WriteLine(Sum());
```

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/qCqntI" frameborder="0"></iframe>

---

to **pass by reference**, use the

# `ref` or `out` keyword

---

```cs
void Swap(ref int first, ref int second)
{
    int temp = first;
    first = second;
    second = temp;
}
```

```cs
int a = 10;
int b = 20;
Console.WriteLine($"Before a = {a}, b = {b}");
Swap(ref a, ref b);
Console.WriteLine($"After a = {a}, b = {b}");
```

<small>`ref` is also needed at the caller</small> <!-- .element: class="fragment" -->

---

<iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Gx2O1q" frameborder="0"></iframe>

---

in C# 7.0, swapping can be achieving by leveraging `ValueTuple`

```cs
int a = 10;
int b = 20;
Console.WriteLine($"Before a = {a}, b = {b}");

(a, b) = (b, a);

Console.WriteLine($"After a = {a}, b = {b}");
```

---

https://try.dot.net/

---

you can also use tuples to return multiple value from a method

```cs
public (string name, int age) getPerson()
{
    return ("Lorem", 10);
}
```

access the field as if it is an object

```cs
var person = getPerson();
Console.WriteLine($"name: {person.name} age: {person.age}");
```

---

use

## deconstruction and discards

to get only the fields you needed

---

```cs
var (name, _) = getPerson();
Console.WriteLine($"name: {name}");
```

in this case, we only want `name`

---

<iframe height="600px" width="100%" src="https://repl.it/@garyng/method-returns-tuple?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

---

# where to go from here?

1. exceptions <!-- .element: class="fragment" -->
1. classes and interfaces <!-- .element: class="fragment" -->
1. async/await <!-- .element: class="fragment" -->
1. lambdas <!-- .element: class="fragment" -->
1. generics <!-- .element: class="fragment" -->

---

# where to go from here?

1. LINQ
1. file I/O <!-- .element: class="fragment" -->
1. user interface with WPF and XAML <!-- .element: class="fragment" -->
1. ... <!-- .element: class="fragment" -->

---

an example of WPF application...

---

# feedback form

http://gg.gg/training_2017-2018

---

## The end.

# Thanks!