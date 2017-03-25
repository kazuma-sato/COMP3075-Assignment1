SELECT 
	Name,
	BillingContact,
	BillingEmail,
	BillingAddress1,
	BillingAddress2,
	BillingCity,
	BillingState,
	BillingZipCode,
	BillingPlanetAbbrv
FROM InvoiceHeader
JOIN PaymentInvoiceLink
	ON InvoiceHeader.InvoiceNumber = PaymentInvoiceLink.InvoiceNumber
Join Customer
	ON InvoiceHeader.CustomerNumber = Customer.CustomerNumber
WHERE PaidAmount = TotalAmount
	AND TotalAmount > 300
ORDER BY Name ASC;