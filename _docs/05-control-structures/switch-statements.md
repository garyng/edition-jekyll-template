---
title: switch statements
subtitle:
category: Control Structures
order: 3
---

switch is a selection statement that chooses a single switch section to execute from a list of candidates based on a pattern match with the match expression {% cite Docs2018b --prefix switch-statements %}

```cs
int caseSwitch = 2;
switch (caseSwitch)
{
    case 1:
        Console.WriteLine("Case 1");
        break;
    case 2:
    case 4:
        Console.WriteLine($"Case {caseSwitch}");
        break;
    case 3:
        Console.WriteLine("Case 3");
        break;
    default:
        Console.WriteLine($"Unexpcted value ({caseSwitch})");
        break;
}
```

Output:

```
Case 2
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/YjhFcn" frameborder="0"></iframe>

The general syntax for each case label is
```
case constant:
```

where constant can be any of the following expressions:

1. A `bool` literal
    1. `true`, or
    1. `false`
1. Any integral constant
    1. `int`
    1. `long`
    1. `byte`
    1. etc
1. The name of a declared `const` variable.
1. An enumeration constant.
    1. `DayOfWeek.Sunday`
1. A `char` literal.
1. A `string` literal.

The switch statement provides a _clean alternative_ for writing multiple if-else statements. The example above can be written as:

```cs
int caseSwitch = 1;

if (caseSwitch == 1)
{
    Console.WriteLine("Case 1");
}
else if (caseSwitch == 2 || caseSwitch == 4)
{
    Console.WriteLine($"Case {caseSwitch}");
}
else if (caseSwitch == 3)
{
    Console.WriteLine("Case 3");
}
else
{
    Console.WriteLine($"Unexpcted value ({caseSwitch})");
}
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/UgOh7n" frameborder="0"></iframe>

## Multiple case labels

As you might have noticed in the previous switch example, a switch section can have **multiple case labels**

```cs
case 2:
case 4:
    Console.WriteLine($"Case {caseSwitch}");
```

However in that _case_, C# does not allow execution to continue from one switch section to the next. The code below will generate a compiler error:

> CS0163: "Control cannot fall through from one case label () to another."

```cs
int caseSwitch = 1;

switch (caseSwitch)
{
    // The following switch section causes an error.
    case 1:
        Console.WriteLine("Case 1...");
        // a jump statement is needed here
    case 2:
        Console.WriteLine("... and/or Case 2");
        break;
}
```

> Live-code example
> <iframe width="100%" height="475" src="https://dotnetfiddle.net/Widget/Phku4t" frameborder="0"></iframe>

Jump statements include:

1. break
1. goto case
1. goto label
1. return
1. throw

## default case

The `default` case, which is optional, specifies what to execute if the match expression does not match with any of the case labels. This is similar to the last `else` clause in the if-elseif-else example.

## References

{% bibliography --cited_in_order --prefix switch-statements %}