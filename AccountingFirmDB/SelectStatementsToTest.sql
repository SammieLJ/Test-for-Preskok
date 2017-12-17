-- Manually insert account entry
insert into accounts (CustomerID, Incoming, Outgoing, InvoiceDate, InvoiceYear)
values (4, 150, 20, "2017-11-30 09:00", "2017");

-- show customers data for year 2017
SELECT a.AccountID, c.Name, c.Surname, c.Address, c.Phone, a.Incoming, a.Outgoing, a.InvoiceDate, a.InvoiceYear, a.Timestamp FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
where a.InvoiceYear=2017;

-- show customer data by years in descending order
SELECT c.Name, c.Surname, c.Address, c.Phone, a.Incoming, a.Outgoing, a.InvoiceDate, a.InvoiceYear, a.Timestamp FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
ORDER BY a.InvoiceYear DESC;

-- select most profitable year for single customer
SELECT c.CustomerID, c.Name, c.Surname, a.InvoiceYear, MAX(a.Incoming - a.Outgoing) AS profit FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
WHERE c.CustomerID = 4
GROUP BY a.InvoiceYear;
