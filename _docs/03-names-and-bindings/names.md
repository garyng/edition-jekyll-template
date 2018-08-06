---
title: Names
subtitle:
category: Names and Bindings
order: 1
---

A name is a string of characters used to identify some entity in a program. C# imposes no limit on the length of names and all characters are significant (meaning that they are case sensitive).

However, identifiers in C# must obey the following rules {% cite Jones2001 --prefix names %}

1. starts with either
    1. letters, or
    1. underscore character
1. contains only
    1. letters
    1. digits
    1. underscore character
1. must not be a keyword or a reserved word (which can be “escaped” by prefixing with the  [verbatim character @]({% link _docs/03-names-and-bindings/special-characters.md %}#1-enable-keywords-to-be-used-as-identifiers))

## References

{% bibliography --cited_in_order --prefix names %}