SELECT j.JobId, ISNULL(SUM(op.Quantity * p.Price), 0) AS Total FROM Jobs AS j
LEFT JOIN Orders AS o ON o.JobId = j.JobId
LEFT JOIN OrderParts AS op ON op.OrderId = o.OrderId
LEFT JOIN Parts AS p ON p.PartId = op.PartId
WHERE j.Status = 'Finished'
GROUP BY j.JobId
ORDER BY SUM(op.Quantity * p.Price) DESC, j.JobId ASC
