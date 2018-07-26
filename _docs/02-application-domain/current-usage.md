---
title: Current usage
subtitle: What types of applications is the language actually being used mostly? Show samples.
category: Application Domain
order: 2
---

Currently, C# has a widespread use in

1. desktop applications, using various technologies like
    - [WinForms (Windows Forms)](#winforms)
    - [WPF (Windows Presentation Foundation)](#wpf)
1. [web sites, web applications and web services, primarily using ASP.NET](#aspnet)

## WinForms

**WinForms**, or _Windows Forms_, is graphical class library included as a part of Microsoft .NET Framework. Its popularity can be seen though the sheer amount of commercially-available **custom user interface controls**:

1. [DevExpress WinForms](https://www.devexpress.com/products/net/controls/winforms/)
![]({{site.url}}/images/posts/current-usage/devexpress-winforms.png)
1. [Windows Forms UI Controls by Infragistics](https://www.infragistics.com/products/windows-forms)
![]({{site.url}}/images/posts/current-usage/infragistics-winforms.png)
1. [Syncfusion Essential Studio for Windows Forms](https://www.syncfusion.com/products/windows-forms)
![]({{site.url}}/images/posts/current-usage/syncfusion-winforms.png)
1. [Xceed for WinForms](https://xceed.com/winforms/)
1. [Telerik UI for WinForms](https://www.telerik.com/products/winforms.aspx)
1. ... and lots more

_**However**_, WinForms is now in **maintenance mode** as no new features will be added {% cite Allen2014 --prefix current-usage %}. Developers are also advised to move forward to its successor – the XAML based UI frameworks, like WPF and UWP.

One thing to note is that even if WinForms is nearly _“dead”_, there are still a lot of legacy WinForms applications in production till this date {% cite Corey2018 Heath2014 --prefix current-usage %}.

## WPF

Almost all of the newer .NET desktop applications are written using WPF, some of the notable examples are:

1. Microsoft Visual Studio
1. Expression Blend, for designing XAML-based interfaces

and a lot more, compiled from {% cite StackOverflow2011 --prefix current-usage %}: 
1. Autodesk AutoCAD
1. Nero
1. Lenovo ThinkVantage
1. HP Total Care Advisor
1. Intel Rapid Storage Technology
1. AMD Fusion Media Explorer
1. Nokia Music
1. HP TouchSmart
1. ...

## ASP.NET

ASP.NET is an open-source {% cite Microsoft2017a --prefix current-usage %} framework for building modern web apps and services with .NET. According to BuiltWith {% cite BuiltWith2018 --prefix current-usage %}, there are more than 40 million websites using ASP.NET.

![]({{site.url}}/images/posts/current-usage/builtwith-website-using-aspnet.png)

Some of the prominent examples are:

1. [StackOverflow](https://stackoverflow.com/) {% cite Craver2013 --prefix current-usage %}
1. [Bing](https://www.bing.com/), and other Microsoft websites
1. [namecheap](https://www.namecheap.com/)
1. [W3Schools](https://www.w3schools.com/)
1. [Dell](http://www.dell.com/)

## Reference

{% bibliography --cited_in_order --prefix current-usage %}