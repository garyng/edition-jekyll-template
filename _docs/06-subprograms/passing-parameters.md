---
title: Passing parameters
subtitle:
category: Subprograms
order: 3
---

In C#, arguments can be passed to the parameters either

1. by value, or
1. by reference

{% cite Docs2015t --prefix passing-parameters %}

Passing arguments by reference allows the changes made by the methods to be persisted at the calling site.

![]({{site.url}}/images/posts/passing-parameters/pass-by-reference-vs-pass-by-value-animation.gif)

Pass by reference can be achieved by using the keyword `ref` and `out`, which we have covered in the topic "[Functional side effects]({% link _docs/04-expressions-and-assignments/functional-side-effects.md %})"

Do note that there are slight differences among

1. [passing **value-type** by value](#passing-value-type-by-value)
1. [passing **reference-type** by value](#passing-reference-type-by-value)
1. [passing **value-type** by reference](#passing-value-type-by-reference)
1. [passing **reference-type** by reference](#passing-reference-type-by-reference)

## Value-type vs. reference-type

A **value-type** variable directly contains the data as compared to **reference-type**, which contains a reference (or pointer) to the data.

Value-types include:

1. numeric types (`int`, `long`, `byte`, `float`, `double`, etc)
1. `bool`
1. structs
1. enumerations

{% cite Docs2015u --prefix passing-parameters %}

Reference-types include

1. class
1. interface
1. object
1. string
1. ..etc

{% cite Docs2015v --prefix passing-parameters %}

## Passing value-type by value

When a **value-type** is passed by **value**, any changes to the parameter in the method will **not** be persisted back in the calling environment {% cite Docs2015w --prefix passing-parameters %}.

> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/8l6hKa" frameborder="0"></iframe>

## Passing reference-type by value

When a **reference-type** is passed by **value**, any changes to the reference/pointer/memory location of the parameter are local; but **content** of the parameter can be changed {% cite Docs2015x --prefix passing-parameters %}.

Changing the _reference_ of the array parameter (ie. assigning it to a new array) will **not** be persisted:

```cs
void ChangeReference(int[] nums)
{
    nums = new int[]{1, 2, 3, 4, 5};
}

void Main()
{
    int[] numbers = new int[] { 10, 20, 30, 40 };
    Console.WriteLine($"Original: {string.Join(", ", numbers)}");

    ChangeReference(numbers);

    Console.WriteLine($"After: {string.Join(", ", numbers)}");
}
```

Output:

```
Original: 10, 20, 30, 40
After: 10, 20, 30, 40
```

But changing the _content_ of the array will be persisted:

```cs
void Main()
{
    int[] numbers = new int[] { 10, 20, 30, 40 };
    Console.WriteLine($"Original: {string.Join(", ", numbers)}");

    ChangeContent(numbers);

    Console.WriteLine($"After: {string.Join(", ", numbers)}");
}

void ChangeContent(int[] nums)
{
    nums[0] = 1;
    nums[1] = 2;
}
```

Output:

```
Original: 10, 20, 30, 40
After: 1, 2, 3, 40
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/RekZlM" frameborder="0"></iframe>

## Passing **value-type** by reference

When a **value-type** is passed by **value**, any changes to the parameter in the method will be persisted {% cite Docs2015w --prefix passing-parameters %}.

This can be achieved by using either `ref` or `out` keyword:

```cs
void Main()
{
    int result;
    Add(1, 2, out result);

    Console.WriteLine(result);
}

void Add(int first, int second, out int result)
{
    result = first + second;
}

```

Output:

```
3
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/dZBu5k" frameborder="0"></iframe>

## Passing **reference-type** by reference

When a **reference-type** is passed by **reference**, any changes to the _content_ and the _reference/pointer/memory location_ of the parameter will be persisted {% cite Docs2015x --prefix passing-parameters %}.

In this case, changes to the reference of the array or the content of the array will both be persisted:

```cs
public static void Main()
{
    int[] numbers = new int[]{10, 20, 30, 40};
    int[] oldNumbers = numbers;	// store a temporary reference to numbers

    Console.WriteLine("--- Change reference/pointer/memory location");

    Console.WriteLine($"Original: {string.Join(", ", numbers)}");

    ChangeReference(ref numbers);

    Console.WriteLine($"After: {string.Join(", ", numbers)}");
    Console.WriteLine($"Still the same object? {numbers.Equals(oldNumbers)}");

    oldNumbers = numbers;
    Console.WriteLine();
    Console.WriteLine("--- Change content");

    Console.WriteLine($"Original: {string.Join(", ", numbers)}");

    ChangeContent(ref numbers);

    Console.WriteLine($"After: {string.Join(", ", numbers)}");
    Console.WriteLine($"Still the same object? {numbers.Equals(oldNumbers)}");
}

static void ChangeReference(ref int[] nums)
{
    nums = new int[]{1, 2, 3, 4, 5};
}

static void ChangeContent(ref int[] nums)
{
    nums[0] = 1;
    nums[1] = 2;
}
```

Output:

```
--- Change reference/pointer/memory location
Original: 10, 20, 30, 40
After: 1, 2, 3, 4, 5
Still the same object? False

--- Change content
Original: 1, 2, 3, 4, 5
After: 1, 2, 3, 4, 5
Still the same object? True
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/mld3YE" frameborder="0"></iframe>

## References

{% bibliography --cited_in_order --prefix passing-parameters %}