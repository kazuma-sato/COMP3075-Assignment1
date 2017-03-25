SELECT *
 FROM Delivery
 JOIN InvoiceDetail
 ON Delivery.DeliveryNumber = InvoiceDetail.DeliveryNumber;