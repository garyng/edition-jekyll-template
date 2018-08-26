---
title: Iteration statements
subtitle:
category: Control Structures
order: 4
---

In C#, there are several constructs that can be used to repeat a block of code, including:

1. [while]({% link _docs/05-control-structures/while-loop.md %})
1. [do…while]({% link _docs/05-control-structures/do-while-loop.md %})
1. [for]({% link _docs/05-control-structures/for-loop.md %})
1. [foreach…in]({% link _docs/05-control-structures/foreach-in-loop.md %})

{% cite Docs2015l --prefix iteration-statements %}

`do` and `while` are logically-controlled loop constructs, `for` is counter-controller, and finally `foreach…in` is used together for iteration based on data structures (specifically, those that implement `IEnumerable<T>`)
User-located loop control mechanisms are achieved using jump statements, some of which include {% cite Docs2015m --prefix iteration-statements %}:

1. [break]({% link _docs/05-control-structures/break.md %})
1. [continue]({% link _docs/05-control-structures/continue.md %})
1. [goto]({% link _docs/05-control-structures/goto.md %})


## References

{% bibliography --cited_in_order --prefix iteration-statements %}