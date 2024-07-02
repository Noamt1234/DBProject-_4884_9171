SELECT e.FirstName, e.LastName, pr.ReviewDate, EXTRACT(YEAR FROM pr.ReviewDate) AS ReviewYear
FROM Employee e
JOIN PerformanceReview pr ON e.EmployeeID = pr.EmployeeID
WHERE pr.ReviewDate BETWEEN TO_DATE('01-01-2001', 'DD-MM-YYYY') AND TO_DATE('31-12-2005', 'DD-MM-YYYY')
  AND NOT EXISTS (
    SELECT 1
    FROM PerformanceReview pr2
    WHERE pr2.EmployeeID = e.EmployeeID
      AND EXTRACT(MONTH FROM pr2.ReviewDate) = 9
  )
ORDER BY pr.ReviewDate;
