--Tính tổng số tiền các sản phẩm user đã thêm vào giỏ hàng.
SELECT Users.id, Users.fullname, C.quantity, c.price, C.total
FROM Users
         RIGHT JOIN
     (SELECT *
      FROM Carts
               JOIN
           (SELECT Cart_Items.cart_id, Cart_Items.quantity, Products.price, price * quantity as total
            FROM Cart_Items
                     JOIN Products ON Cart_Items.product_id = Products.id) as T
           ON Carts.id = T.cart_id) as C
     ON Users.id = C.user_id;

--Lấy ra danh sách người dùng đã từng có đơn hàng trên 50 nghìn.
SELECT Users.id, Users.fullname, Orders.total_amount
FROM Users JOIN Orders ON Users.id = Orders.user_id
WHERE Orders.total_amount > 50;

--Lấy ra danh sách các sản phẩm đã hết hàng ở trong kho.
SELECT * FROM Products WHERE stock <= 0;

--Lấy ra danh sách người dùng và số lượng mặt hàng người dùng đó đang có trong giỏ hàng.
SELECT Users.id, Users.fullname, C.product_id, C.quantity
FROM Users RIGHT JOIN
    (SELECT Carts.user_id, quantity, product_id FROM Carts
    JOIN Cart_Items
        ON Carts.id = Cart_Items.cart_id) as C
on Users.id = C.user_id;

--Tính tổng số tiền lãi sẽ thu được nếu như bán hết các sản phẩm còn lại.
