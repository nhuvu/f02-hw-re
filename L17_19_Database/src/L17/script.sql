/*Select các bản ghi theo 3 giá trị category*/
SELECT * FROM Products WHERE category in ('BOOKS', 'ELECTRONICS', 'FURNITURE');

/*Select các bản ghi users có fullname bắt đầu bằng chữ “a”*/
SELECT * FROM Users WHERE LOWER(fullname) LIKE 'a%'

/*Viết truy vấn kiểm tra xem có bao nhiêu users có status là “ACTIVE”*/
SELECT COUNT(*) AS num_active
FROM Users WHERE status = 'ACTIVE';

/*Viết truy vấn kiểm tra xem có bao nhiêu products có stock <= 0*/
SELECT COUNT(*) AS out_ouf_stock
FROM Products WHERE stock <= 0;

/*Lấy ra 10 products có giá cao nhất*/
SELECT * FROM Products
ORDER BY price DESC
LIMIT 10;