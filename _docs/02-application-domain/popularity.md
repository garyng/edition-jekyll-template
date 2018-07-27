---
title: Popularity
subtitle: Is the language currently a popular language? If yes, why and who are using it in what application domains? If not, why?
category: Application Domain
order: 3
---

Yes, C# language currently is a popular language.

The way to measure the popularity of a programming language is by examining the job demand because it reflects what the industries are searching for. Below shows the most in-demand languages of the end of the year 2017 {% cite Putano2017 --prefix popularity %}.

![]({{site.url}}/images/posts/popularity/most-in-demand-languages.png)

As we can see that C# is the 3<sup>rd</sup> most popular languages from the job websites, signifying its weight in Line of Business applications.

According to Glassdoor, the average C# developer salary, as of April 2018 in the United States, was $79,954. The range extended from $61,000 to a high of $104,000 per annum {% cite Glassdoor2018 --prefix popularity %}.

![]({{site.url}}/images/posts/popularity/glassdoor-csharp-average-base-pay.png)

Beside from the career prospects and the salary expectations, we can also analyze the number of users of using each language programming languages from GitHub. Here, GitHub is the most suitable choice of data sources because as of June 2018, GitHub reported to have over _30 million_ users {% cite GitHub2018 --prefix popularity %} and _57 million_ repositories {% cite Firestine2017 --prefix popularity %}, making it one of the largest host of source code in the world {% cite Gousios2018 --prefix popularity %}.

Below shows the overall rankings for each language {% cite Frederickson2018 --prefix popularity %}, we can see that C# is the 7<sup>th</sup> most used programming language.

![]({{site.url}}/images/posts/popularity/github-monthly-active-user.png)

## Why so many people are using C#?

1. the mature ecosystem surrounding C#, including
    1. the greatest IDE of all: [Microsoft Visual Studio](https://visualstudio.com), which also offers
        - a **free** version - [Microsoft Visual Studio Community](https://visualstudio.microsoft.com/vs/community/)
        - a **Mac** version - [Microsoft Visual Studio for Mac](https://visualstudio.microsoft.com/vs/mac/)
        - and even a **lightweight**, **cross-platform** version - [Visual Studio Code](https://code.visualstudio.com/)
    1. **.NET Framework**, and the vast libraries offered by the framework
    1. **.NET Core**, the **open source** and **cross platform version** of .NET Framework
1. C# has a small learning curve {% cite Mashable2018 --prefix popularity %}
1. C# is very versatile for developing a multitude of different applications, including
    - Desktop apps
        - WinForms
        - WPF
        - UWP
    - Web servers and clients
        - ASP.NET
        - ASP.NET Core
    - Mobile apps
        - Xamarin
    - Games
        - Unity
1. the language itself still evolving continuously, which gained even more traction with the open source of .NET
    - **Roslyn**, the C# (and Visual Basic) compiler is open source on [GitHub](https://github.com/dotnet/roslyn)
    - **C# language specification** is also open source at [GitHub](https://github.com/dotnet/csharplang), where everyone can suggest ideas and make improvements to the language

## Where C# is used?

C# is used in mainly business domain including desktop and web application as stated before ([Current Usage of C#]({% link _docs/02-application-domain/current-usage.md %})). Recently, C# is also getting more and more attention in the following areas:
1. Game development
    - [Unity](https://unity3d.com/)
1. Mobile development
    - [Xamarin](https://visualstudio.microsoft.com/xamarin/)
1. Cross-platform development
    - [.NET Core](https://www.microsoft.com/net/learn/get-started-with-dotnet-tutorial)
    - Xamarin
    - [Mono](https://www.mono-project.com/)
1. Artificial Intelligence
    - [Azure AI Platform](https://azure.microsoft.com/en-us/overview/ai-platform/)
    - [ML.NET](https://www.microsoft.com/net/learn/apps/machine-learning-and-ai/ml-dotnet)

## References

{% bibliography --cited_in_order --prefix popularity %}