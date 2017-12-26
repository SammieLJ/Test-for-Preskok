-- select most profitable year (enter year) for single customer
SELECT c.CustomerID, c.Name, c.Surname, a.EntryYear, MAX(i.Incoming - i.Outgoing) AS profit FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
LEFT JOIN invoices i ON a.InvoiceID = i.InvoiceID
WHERE a.EntryYear = 2017
GROUP BY c.CustomerID
ORDER BY profit desc;

-- select most profitable year for single customer
SELECT c.CustomerID, c.Name, c.Surname, a.EntryYear, MAX(i.Incoming - i.Outgoing) AS profit FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
LEFT JOIN invoices i ON a.InvoiceID = i.InvoiceID
WHERE c.CustomerID = 4
GROUP BY a.EntryYear;

-- show customers data for year 2017
SELECT a.AccountID, c.Name, c.Surname, c.Address, c.Phone, i.Incoming, i.Outgoing, a.EntryDate, a.EntryYear, a.Timestamp FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
LEFT JOIN invoices i ON a.InvoiceID = i.InvoiceID
where a.EntryYear=2017;

-- show customer data by years in descending order
SELECT c.Name, c.Surname, c.Address, c.Phone, i.Incoming, i.Outgoing, a.EntryDate, a.EntryYear, a.Timestamp FROM accounts a
LEFT JOIN customer c ON a.CustomerID = c.CustomerID
LEFT JOIN invoices i ON a.InvoiceID = i.InvoiceID
ORDER BY a.EntryYear DESC;
