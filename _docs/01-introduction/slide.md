---
title: Slide
category: Introduction
order: 999
layout: slide
---

# C&#35;

_"see-sharp"_

{% fragment %} **multi-paradigm** language

{% fragment %} developed by Microsoft around year 2000

{% fragment %} under the lead of _Anders Hejlsberg_

---

![Anders Hejlsberg]({{site.url}}/images/posts/history/Anders_Hejlsberg.jpg)

_Andres Hejlsberg_

---

`C#` is very similar to `C++` and `Java`

---

## 7.3

latest version of C#

released on _7 May 2018_

---

# Why C# is invented?

{% fragment %} The most plausible explanation:

{% fragment %} the lawsuit between

{% fragment %} **Sun Microsystems** and **Microsoft**

---

forced to discontinue

## Microsoft Java Virtual Machine (MSJVM)

{% fragment %} an attempt to drive more customer to use Windows and Microsoft products

{% fragment %} _"embrace, extend, and extinguish"_

---

eventually,

## C&#35; was born

as a "response" to `Java`

---

C# supports

## more than one programming style

{% fragment %} hence the name **multi-paradigm**

---

1. Procedural programming
1. Object-oriented programming {% fragment %}
1. Functional programming {% fragment %}
1. ... etc {% fragment %}

---

## Procedural programming

_step by step_

---

```cs
public void CalculateTotalAmount()
{
    // Get all the orders
    InventoryItem book =
        new InventoryItem(1, "Learn C# in 30 Minutes", InventoryItem.SalesTaxCategory.Normal, (decimal)19.95,
            (decimal)2.5);
    InventoryItem ebook =
        new InventoryItem(2, "Learn F# in 31 Minutes", InventoryItem.SalesTaxCategory.Normal, (decimal)9.95, 0);
    InventoryItem energyDrink =
        new InventoryItem(3, "Monster Energy Drink", InventoryItem.SalesTaxCategory.Food, (decimal)1.95,
            (decimal)0.75);

    // Get customer
    Customer joe = new Customer(1, "Joe Smith", false);

    // Create an order
    Order order = new Order(1, joe);

    order.LineItems.Add(new LineItem(book, 2));
    order.LineItems.Add(new LineItem(ebook, 1));
    order.LineItems.Add(new LineItem(energyDrink, 10));

    // Rates
    const decimal normalTaxRate = (decimal)0.08;
    const decimal medicineTaxRate = (decimal)0.00;
    const decimal foodTaxRate = (decimal)0.04;
    const decimal luxuryTaxRate = (decimal)0.14;

    decimal subTotal = (decimal)0.0;
    decimal tax = (decimal)0.0;
    decimal shippingFee = (decimal)0.0;

    // Calculate sub total based on category
    foreach(LineItem lineItem in order.LineItems)
    {
        decimal lineItemSubTotal = lineItem.Item.Price * lineItem.Quantity;

        subTotal += lineItemSubTotal;

        if(lineItem.Item.TaxCategory == InventoryItem.SalesTaxCategory.Medicine)
        {
            tax += lineItemSubTotal * medicineTaxRate;
        }
        else if(lineItem.Item.TaxCategory == InventoryItem.SalesTaxCategory.Food)
        {
            tax += lineItemSubTotal * foodTaxRate;
        }
        else if(lineItem.Item.TaxCategory == InventoryItem.SalesTaxCategory.Luxury)
        {
            tax += lineItemSubTotal * luxuryTaxRate;
        }
        else // Normal
        {
            tax += lineItemSubTotal * normalTaxRate;
        }

        if(!order.Customer.IsPremiumMember)
        {
            // Non-Premium customers pay 50 cents per pound for shipping.
            shippingFee += lineItem.Item.Weight * lineItem.Quantity * (decimal)0.50;
        }
    }

    // Calculate total
    decimal total = subTotal + tax + shippingFee;

    System.Console.WriteLine(subTotal);
    System.Console.WriteLine(tax);
    System.Console.WriteLine(shippingFee);
    System.Console.WriteLine(total);
}
```

---

1. get orders
1. get customer
1. create an order
1. initialize rates
1. calculate subtotal based on category
1. calculate total
1. display

---

## Object-oriented programming

_"objects"_

---

```cs
public void CalculateTotalAmount()
{
    InventoryItem book =
        new InventoryItem(1, "Learn C# in 30 Minutes", InventoryItem.SalesTaxCategory.Normal, (decimal)19.95,
            (decimal)2.5);
    InventoryItem ebook =
        new InventoryItem(2, "Learn F# in 31 Minutes", InventoryItem.SalesTaxCategory.Normal, (decimal)9.95, 0);
    InventoryItem energyDrink =
        new InventoryItem(3, "Monster Energy Drink", InventoryItem.SalesTaxCategory.Food, (decimal)1.95,
            (decimal)0.75);

    Customer joe = new Customer(1, "Joe Smith", false);

    // Create an order
    Order order = new Order(1, joe);

    order.LineItems.Add(new LineItem(book, 2));
    order.LineItems.Add(new LineItem(ebook, 1));
    order.LineItems.Add(new LineItem(energyDrink, 10));

    // Check values. 
    // Notice that nothing needs to be calculated in this code.
    // All values are calculated in the business classes.
    System.Console.WriteLine(order.SubTotal);
    System.Console.WriteLine(order.Tax);
    System.Console.WriteLine(order.ShippingFee);
    System.Console.WriteLine(order.Total);
}
```

---

Same example, but calculation logic is **hidden** inside objects

---

## Functional programming

_"mathematical functions"_

---

A simple `LINQ` query

```cs
database.Where(item => item.Customer.Name == "Joe")
        .Select(item => item.CalculatePrice())
        .Aggregate(0, (accumulate, price) => accumulate + price);
```

---

# Unique features of C&#35;

---

1. Property syntax
1. Partial classes and methods {% fragment %}
1. Extension methods {% fragment %}
1. Anonymous types {% fragment %}
1. Language Integrated Query (LINQ) {% fragment %}
1. etc... {% fragment %}

---

## Property syntax

easily customize the mechanisms for getting, setting, or computing value of a _field_.

---

```cs
public class SaleItem
{
   public string Name { get; set; }
   public decimal Price { get; set; }
}
```

---

## Partial classes and methods

where a class's member is split into multiple files

---

```cs
// File1
public partial class Employee
{
    public void DoWork()
    {
    }

    // partial method
    partial void onNameChanged();
}

// File2
public partial class Employee
{
    public void GoToLunch()
    {
    }

    partial void onNameChanged()  
    {  
        // method body  
    }  
}
```

---

## Extension methods

allow programmers to extend a class that **cannot be modified**, especially those built-in types

---

```cs
public static class StringExtension
{
    // extend the built in string type
    public static int WordCount(this string str)
    {
        return str.Split(new char[] {' ', '.','?'}, StringSplitOptions.RemoveEmptyEntries).Length;
    }
}
```

---

## Anonymous types

quickly define an object without defining the type first

---

```cs
var v = new { Amount = 108, Message = "Hello" };
Console.WriteLine(v.Amount + v.Message);
```

---

## Language Integrated Query (LINQ)

provide a **unified** language for querying data from various sources

---

```cs
// Query syntax
var result = from student in students
                where student.Scores[0] > 90
                select student;

// Fluent syntax
var result = students.Where(student => student.Scores[0] > 90);
```

---

The end.

# Thanks!