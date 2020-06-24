-- Projet: Projet Database SQL Server Fairphone MA08
-- File: Create a view to see how much records contains the database for each tables and in total. `viewFairphone` is the name of the view.
-- Authors: Samuel Roland and Gatien Jayme
-- Date: janvier 2020

-- create the view with the count of records in each tables.
CREATE VIEW viewFairphone AS
(SELECT COUNT(customers.id) as NbCustomers, COUNT(articles.id) as NbArticles, COUNT(shops.id) as NbShops, COUNT(descriptions.id) as NbDescriptions, COUNT(promotions.id) as NbPromotions, COUNT(orders.id) as NbOrders, COUNT(components.id) as NbComponents, COUNT(benefit.id) as NbBenefit, COUNT(emails.id) as NbEmails, COUNT(fairphones.id) as NbFairphones, 
TotalRecords = COUNT(customers.id) + COUNT(articles.id) + COUNT(shops.id) + COUNT(descriptions.id) + COUNT(promotions.id) + COUNT(orders.id) + COUNT(components.id) + COUNT(benefit.id) + COUNT(emails.id) + COUNT(fairphones.id)
from customers
FULL JOIN articles on articles.id = customers.id
FULL JOIN shops on shops.id = articles.id
FULL JOIN descriptions on descriptions.id = shops.id
FULL JOIN promotions on promotions.id = descriptions.id
FULL JOIN orders on orders.id = promotions.id
FULL JOIN components on components.id = orders.id
FULL JOIN benefit on benefit.id = components.id
FULL JOIN emails on emails.id = benefit.id
FULL JOIN fairphones on fairphones.id = emails.id);
