-- Liệt kê tất cả sách và tên nhà xuất bản của các quyển sách, sao cho quyển sách đó có ít nhất một hóa đơn mượn sách.
SELECT b.Title, p.Name AS Publisher_Name
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE b.Book_Id IN (
    SELECT DISTINCT Book_Id
    FROM Book_Invoice
);

--Tính tổng số quyển sách mà mỗi nhà xuất bản đã xuất bản.
SELECT p.Name AS Publisher_Name, COUNT(b.Book_Id) AS Total_Books
FROM Publisher p
         JOIN Book b ON p.Pub_Id = b.Pub_Id
GROUP BY p.Name;

-- Liệt kê tên sách và tên nhà xuất bản của sách có giá lớn hơn giá trung bình của tất cả quyển sách.
SELECT b.Title, p.Name AS Publisher_Name, b.Price
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE b.Price > (
    SELECT AVG(Price) FROM Book
);

-- Liệt kê thông tin của tất cả các thành viên và số lượng quyển sách mà họ đã mượn.
SELECT m.CardNo, m.Surname, m.Name, m.Address, m.Birthday_Date, m.Gender, m.Phone_No,
       COUNT(bi.Book_Id) AS Books_Borrowed
FROM Member m
         LEFT JOIN Book_Invoice bi ON m.CardNo = bi.CardNo
GROUP BY m.CardNo;

-- # Liệt kê tên sách và tên nhà xuất bản của quyển sách có giá cao nhất và giá thấp nhất.
SELECT b.Title, p.Name AS Publisher_Name, b.Price
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE b.Price = (SELECT MAX(Price) FROM Book)
UNION
SELECT b.Title, p.Name AS Publisher_Name, b.Price
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE b.Price = (SELECT MIN(Price) FROM Book);

-- # Đếm tổng số các quyển sách mà các nhà xuất bản đã xuất bản.
SELECT COUNT(*) AS Total_Books
FROM Book;

-- # Liệt kê tên sách và tên nhà xuất bản của sách, sao cho sách đó có ít nhất một hóa đơn mượn và hóa đơn đó không bị trễ hạn.
SELECT DISTINCT b.Title, p.Name AS Publisher_Name
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
         JOIN Book_Invoice bi ON b.Book_Id = bi.Book_Id
WHERE bi.Date_Out < bi.Due_Date;

-- # Liệt kê tất cả thông tin của các thành viên mà đã mượn sách và số lượng sách mà họ đã mượn, sắp xếp theo số lượng sách giảm dần.
SELECT m.CardNo, m.Surname, m.Name, m.Address, m.Birthday_Date, m.Gender, m.Phone_No,
       COUNT(bi.Book_Id) AS Total_Borrowed
FROM Member m
         JOIN Book_Invoice bi ON m.CardNo = bi.CardNo
GROUP BY m.CardNo
ORDER BY Total_Borrowed DESC;

-- # Tính tổng số quyển sách mà mỗi nhà xuất bản đã xuất bản, kết quả chỉ bao gồm những nhà xuất bản đã xuất bản ít nhất hai sách.
SELECT p.Pub_Id, p.Name AS Publisher_Name, COUNT(b.Book_Id) AS Book_Count
FROM Publisher p
         JOIN Book b ON p.Pub_Id = b.Pub_Id
GROUP BY p.Pub_Id
HAVING COUNT(b.Book_Id) >= 2;

-- # Liệt kê tất cả thông tin của các thành viên mà đã mượn sách loại 'crime story' và số lượng sách mà họ đã mượn ít nhất là quyển.

-- # Liệt kê tên sách và ngày mượn của sách có hóa đơn mượn nhưng chưa được trả và số lượng ngày quá hạn (số ngày giữa Due_Date và ngày hiện tại).
SELECT b.Title, bi.Date_Out,
       DATEDIFF(CURDATE(), bi.Due_Date) AS Overdue_Days
FROM Book_Invoice bi
         JOIN Book b ON bi.Book_Id = b.Book_Id
WHERE CURDATE() > bi.Due_Date;

-- # Liệt kê tên sách và tên nhà xuất bản của sách có hóa đơn mượn nhưng chưa được trả và số lượng ngày quá hạn lớn hơn 7.
SELECT b.Title, p.Name AS Publisher_Name,
       DATEDIFF(CURDATE(), bi.Due_Date) AS Overdue_Days
FROM Book_Invoice bi
         JOIN Book b ON bi.Book_Id = b.Book_Id
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE CURDATE() > bi.Due_Date
  AND DATEDIFF(CURDATE(), bi.Due_Date) > 7;

-- # Đếm xem ngày hôm nay mỗi nhân viên có bao nhiêu hóa đơn.
SELECT e.Emp_Id, e.Surname, e.Name,
       COUNT(bi.Invoice_No) AS Today_Invoices
FROM Employee e
         JOIN Book_Invoice bi ON e.Emp_Id = bi.Emp_Id
WHERE DATE(bi.Date_Out) = CURDATE()
GROUP BY e.Emp_Id;

-- # Liệt kê tên sách và số lượng quyển sách mà sách đó có ít nhất một hóa đơn mượn và được xuất bản trong thành phố 'Hanoi'.
SELECT b.Title, COUNT(bi.Book_Id) AS Borrow_Count
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
         JOIN Book_Invoice bi ON b.Book_Id = bi.Book_Id
WHERE p.City = 'Hanoi'
GROUP BY b.Title;

-- # Liệt kê tên sách và giá của quyển sách có giá thấp hơn giá trung bình của tất cả quyển sách và được xuất bản trong thành phố 'Hanoi'.
SELECT b.Title, b.Price
FROM Book b
         JOIN Publisher p ON b.Pub_Id = p.Pub_Id
WHERE b.Price < (SELECT AVG(Price) FROM Book)
  AND p.City = 'Hanoi';