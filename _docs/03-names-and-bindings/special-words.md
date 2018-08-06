---
title: Special words
subtitle:
category: Names and Bindings
order: 3
---

## Reserved words

Reserved words are names or identifiers that have predefined meanings to the compiler. They cannot be used as a user-defined identifiers unless they are prefixed with the [verbatim character @]({% link _docs/03-names-and-bindings/special-characters.md %}#1-enable-keywords-to-be-used-as-identifiers).

Below are all the reserved words in C# {% cite Docs2017b --prefix special-words %}.

|           |              |           |           |
| --------- | ------------ | --------- | --------- |
| abstract  | as           | base      | bool      |
| break     | byte         | case      | catch     |
| char      | checked      | class     | const     |
| continue  | decimal      | default   | delegate  |
| do        | double       | else      | enum      |
| event     | explicit     | extern    | false     |
| finally   | fixed        | float     | for       |
| foreach   | goto         | if        | implicit  |
| in        | int          | interface | internal  |
| is        | lock         | long      | namespace |
| new       | null         | object    | operator  |
| out       | override     | params    | private   |
| protected | public       | readonly  | ref       |
| return    | sbyte        | sealed    | short     |
| sizeof    | stackalloc   | static    | string    |
| struct    | switch       | this      | throw     |
| true      | try          | typeof    | uint      |
| ulong     | unchecked    | unsafe    | ushort    |
| using     | using static | virtual   | void      |
| volatile  | while        |           |           |

## Contextual keywords

They only have special meanings under certain **contexts** {% cite Docs2017b --prefix special-words %}.

|                                 |                      |                         |
| ------------------------------- | -------------------- | ----------------------- |
| add                             | alias                | ascending               |
| async                           | await                | descending              |
| dynamic                         | from                 | get                     |
| global                          | group                | into                    |
| join                            | let                  | nameof                  |
| orderby                         | partial (type)       | partial (method)        |
| remove                          | select               | set                     |
| value                           | var                  | when (filter condition) |
| where (generic type constraint) | where (query clause) | yield                   |
|                                 |                      |                         |

## References

{% bibliography --cited_in_order --prefix special-words %}