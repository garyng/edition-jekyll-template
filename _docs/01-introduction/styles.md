---
title: Supported programming styles
category: Introduction
order: 2
---

C# supports more than one programming style:

1. Imperative programming
    1. [Procedural programming](#procedural-programming)
    1. [Object-oriented programming](#object-oriented-programming)
1. [Functional programming](#functional-programming)

etc..

Such language is better known as a “**multi-paradigm**” programming language.

## Procedural programming

Procedural language describes the sequence of statement step by step to reach the goal {% cite Hope2017 --prefix styles %}. It tells the computer how to accomplish a task by breaking down a problem into multiple, smaller sub tasks. Here is an example function for calculating the total amount of payment adapted from {% cite Lilly2016 --prefix styles %}.

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

## Object-oriented programming

C# also supports object-oriented programming, where a problem domain is model using **“objects”** which may contain data and behaviors.

The same example, but the business logic is moved to the `Order` class.

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

## Functional programming

Functional language is a programming language built over and around logical functions or procedures within its programming structure. For example, a LINQ query:

```cs
database.Where(item => item.Customer.Name == "Joe")
        .Select(item => item.CalculatePrice())
        .Aggregate(0, (accumulate, price) => accumulate + price);
```

## References

{% bibliography --cited_in_order --prefix styles %}