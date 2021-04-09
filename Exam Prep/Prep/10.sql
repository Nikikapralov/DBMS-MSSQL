SELECT p.PartId, p.Description, pn.Quantity AS Required, P.StockQty AS [In Stock], op.Quantity AS Ordered FROM Jobs AS j
JOIN PartsNeeded AS pn ON pn.JobId = j.JobId
JOIN Parts AS p ON p.PartId = pn.PartId
JOIN Orders AS o ON o.JobId = j.JobId
JOIN OrderParts AS op ON op.OrderId = o.OrderId
WHERE Status != 'Finished' AND Delivered = 0 AND p.StockQty < pn.Quantity
