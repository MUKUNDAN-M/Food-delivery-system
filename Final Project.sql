Create database FOOD_DELIVERY_SYSTEM;
Use FOOD_DELIVERY_SYSTEM;

Create table Customers(
Customer_id int primary key auto_increment,
Name varchar(50)not null,
Email varchar(100),
Phone_no varchar(15),
Address text
);

INSERT INTO Customers (Name, Email, Phone_no, Address) VALUES 
('Karthik Subramanian', 'karthik.s@gmail.com', '9876543210', '12 Gandhi Road, Chennai, Tamil Nadu'),
('Meena Ramesh', 'meena.ramesh@outlook.com', '9823456789', '47 Mela Street, Madurai, Tamil Nadu'),
('Arun Prakash', 'arun.p@rediffmail.com', '9845671234', '88 East Main Road, Coimbatore, Tamil Nadu'),
('Divya Lakshmi', 'divya.lakshmi@yahoo.com', '9798765432', '9 Nehru Nagar, Trichy, Tamil Nadu'),
('Vignesh K', 'vignesh.k@hotmail.com', '9812345678', '23 Anna Salai, Salem, Tamil Nadu'),
('Revathi S.', 'revathi.s@gmail.com', '9756734567', '31 Periyar Street, Vellore, Tamil Nadu'),
('Sathish Kumar', 'sathish.kumar@gmail.com', '9988776655', '54 Gandhi Salai, Tirunelveli, Tamil Nadu'),
('Bhavana R', 'bhavana.r@rediffmail.com', '9678945612', '19 Lake View Road, Kanchipuram, Tamil Nadu'),
('Manikandan P', 'manikandan.p@yahoo.com', '9944332211', '7 Railway Feeder Rd, Karur, Tamil Nadu'),
('Janani Ramesh', 'janani.ramesh@hotmail.com', '9877891234', '22 VOC Street, Thanjavur, Tamil Nadu'),
('Surya Narayanan', 'surya.narayanan@gmail.com', '9845012345', '5 Raja Street, Cuddalore, Tamil Nadu'),
('Lakshmi Devi', 'lakshmi.devi@gmail.com', '9898989898', '88 Temple Road, Tiruchirappalli, Tamil Nadu'),
('Rajesh Kanna', 'rajesh.kanna@gmail.com', '9966554433', '34 Collector Office Road, Tenkasi, Tamil Nadu'),
('Deepika G', 'deepika.g@outlook.com', '9789098765', '16 Kamaraj Salai, Pudukkottai, Tamil Nadu'),
('Mohan R', 'mohan.r@rediffmail.com', '9678967890', '11 Market Street, Nagercoil, Tamil Nadu'),
('Kaviya Shree', 'kaviya.shree@gmail.com', '9787687865', '21 Arni Main Road, Tiruvannamalai, Tamil Nadu'),
('Harish S', 'harish.s@hotmail.com', '9767676654', '36 NH Road, Perambalur, Tamil Nadu'),
('Priya Dharshini', 'priyadharshini@gmail.com', '9899988776', '77 South Bazaar, Namakkal, Tamil Nadu'),
('Sundar Rajan', 'sundarrajan@outlook.com', '9933445566', '45 Gandhi Nagar, Thoothukudi, Tamil Nadu'),
('Shanthi Devi', 'shanthi.devi@gmail.com', '9977886655', '9 Bypass Road, Tirunelveli, Tamil Nadu'),
('Aravind Kumar', 'aravind.kumar@gmail.com', '9765432109', '101 MG Road, Erode, Tamil Nadu'),
('Swetha Rani', 'swetha.rani@yahoo.com', '9812347890', '67 Thillai Nagar, Cuddalore, Tamil Nadu'),
('Muthukumar P', 'muthukumar.p@outlook.com', '9756781234', '12 Bus Stand Rd, Nagapattinam, Tamil Nadu'),
('Kanchana Devi', 'kanchana.devi@gmail.com', '9809809809', '23 Muthuramalingam Salai, Karur, Tamil Nadu'),
('Vasanth Babu', 'vasanth.babu@hotmail.com', '9797011122', '59 VOC Nagar, Sivakasi, Tamil Nadu');



create table Restaurants(
Restaurant_id int primary key auto_increment,
Name varchar(100) Not null,
Location varchar(100),
Rating decimal(2,1)
);

INSERT INTO Restaurants (Name, Location, Rating) VALUES 
('Hotel Saravana Bhavan', 'Chennai', 4.5),
('Sri Krishna Sweets Bhavan', 'Coimbatore', 4.3),
('Madurai Murugan Idli Mess', 'Madurai', 4.6),
('Dindigul Thalappakatti', 'Dindigul', 4.4),
('A2B Adyar Ananda Bhavan', 'Erode', 4.2),
('Velu Military Hotel', 'Chennai', 4.1),
('Sree Saravana Mess', 'Villupuram', 4.0),
('Anjappar Chettinad', 'Salem', 4.3),
('Hotel Junior Kuppanna', 'Namakkal', 4.2),
('Amma Unavagam', 'Tiruvannamalai', 4.0),
('Velu Military Hotel', 'Chennai', 4.1),
('Sree Saravana Mess', 'Villupuram', 4.0),
('Anjappar Chettinad', 'Salem', 4.3),
('Hotel Junior Kuppanna', 'Namakkal', 4.2),
('Amma Unavagam', 'Tiruvannamalai', 4.0),
('The Karaikudi Kitchen', 'Sivakasi', 4.4),
('Hotel Gowri Shankar', 'Rajapalayam', 4.1),
('Sangeetha Veg Restaurant', 'Nagapattinam', 4.3),
('Hotel Aryaas', 'Perambalur', 4.0),
('Tiffin Centre Deluxe', 'Dharmapuri', 3.9),
('Saravana Bhavan Elite', 'Chennai', 4.5),
('Ramesh Tiffin Center', 'Madurai', 4.1),
('Annai Mess', 'Thanjavur', 4.0),
('Murugan Bhavan', 'Vellore', 4.2),
('Ayyappan Veg Hotel', 'Tiruchirappalli', 4.3),
('Sri Balaji Bhavan', 'Theni', 4.1),
('Classic Veg Hotel', 'Tiruvallur', 4.0),
('Kongu Tiffin Center', 'Erode', 4.3),
('Annapoorna Veg Delight', 'Kumbakonam', 4.4),
('Gnanam Mess', 'Chidambaram', 4.2);



create table Food_Items(
Item_id int primary key auto_increment,
Name varchar(100) Not null,
Price decimal(6,2),
Restaurant_id int,
foreign key (Restaurant_id) references
Restaurants (Restaurant_id)
);

INSERT INTO Food_Items (Name, Price, Restaurant_id) VALUES 
('Ghee Roast Dosa', 120.00, 1),
('Sweet Mysore Pak', 80.00, 2),
('Idli with Vada Combo', 60.00, 3),
('Chicken Biryani', 180.00, 4),
('Mini Tiffin Combo', 100.00, 5),
('Mutton Chukka', 210.00, 6),
('Sambar Rice', 60.00, 7),
('Chettinad Chicken Curry', 190.00, 8),
('Kari Dosai', 130.00, 9),
('Lemon Rice with Chips', 70.00, 10),
('Vegetable Kurma', 95.00, 11),
('Pongal with Chutney', 60.00, 12),
('Ragi Dosa', 80.00, 13),
('Onion Uthappam', 75.00, 14),
('Sambar Idli', 55.00, 15),
('Curd Rice', 50.00, 16),
('Paniyaram', 70.00, 17),
('Appam with Coconut Milk', 85.00, 18),
('Tomato Rice', 65.00, 19),
('Rava Kichadi', 90.00, 20),
('Chapati Kurma', 60.00, 21),
('Poori Masala', 65.00, 22),
('Vegetable Biryani', 90.00, 23),
('Kesari Bath', 45.00, 24),
('Idiyappam', 70.00, 25);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(8,2) NOT NULL,
    status ENUM(
        'Pending', 
        'Accepted', 
        'Preparing', 
        'Out for Delivery', 
        'Delivered', 
        'Cancelled'
    ) NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, total_amount, status) VALUES 
(1, 450.00, 'Delivered'),
(2, 599.00, 'Out for Delivery'),
(3, 380.00, 'Preparing'),
(4, 720.00, 'Accepted'),
(5, 240.00, 'Delivered'),
(6, 525.00, 'Cancelled'),
(7, 310.00, 'Pending'),
(8, 680.00, 'Preparing'),
(9, 399.00, 'Accepted'),
(10, 812.00, 'Delivered'),
(11, 299.00, 'Out for Delivery'),
(12, 430.00, 'Pending'),
(13, 512.00, 'Preparing'),
(14, 640.00, 'Delivered'),
(15, 735.00, 'Accepted'),
(16, 275.00, 'Cancelled'),
(17, 660.00, 'Out for Delivery'),
(18, 385.00, 'Preparing'),
(19, 570.00, 'Accepted'),
(20, 495.00, 'Delivered'),
(21, 625.00, 'Cancelled'),
(22, 335.00, 'Pending'),
(23, 709.00, 'Delivered'),
(24, 545.00, 'Preparing'),
(25, 598.00, 'Out for Delivery');



create table Delivery(
delivery_id INT PRIMARY KEY auto_increment,
order_id INT,
delivery_person VARCHAR(100),
delivery_status ENUM(
'Assigned',
 'Picked Up',
 'In Transit',
 'Delivered',
 'Cancelled') NOT NULL,
estimated_time TIME,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Delivery (order_id, delivery_person, delivery_status, estimated_time) VALUES 
(1, 'Ravi Kumar', 'Delivered', '00:35:00'),
(2, 'Arun Prasad', 'In Transit', '00:30:00'),
(3, 'Sundar Raj', 'Picked Up', '00:28:00'),
(4, 'Karthik M', 'Assigned', '00:40:00'),
(5, 'Mohan D', 'Delivered', '00:25:00'),
(6, 'Balaji V', 'Cancelled', '00:00:00'),
(7, 'Surya S', 'Assigned', '00:32:00'),
(8, 'Deepak T', 'Picked Up', '00:31:00'),
(9, 'Rajesh K', 'In Transit', '00:27:00'),
(10, 'Praveen G', 'Delivered', '00:38:00'),
(11, 'Saravanan N', 'In Transit', '00:29:00'),  -- ✅ fixed
(12, 'Vignesh A', 'Assigned', '00:33:00'),
(13, 'Naveen R', 'Picked Up', '00:26:00'),
(14, 'Aravind B', 'In Transit', '00:31:00'),
(15, 'Kumarasamy S', 'Delivered', '00:34:00'),
(16, 'Thiru N', 'Cancelled', '00:00:00'),
(17, 'Yogesh V', 'In Transit', '00:36:00'),
(18, 'Sathish P', 'Picked Up', '00:29:00'),
(19, 'Manikandan D', 'Assigned', '00:35:00'),
(20, 'Senthil R', 'Delivered', '00:37:00'),
(21, 'Harish S', 'Cancelled', '00:00:00'),
(22, 'Dinesh K', 'Assigned', '00:30:00'),
(23, 'Prem R', 'Delivered', '00:31:00'),
(24, 'Gokul M', 'Picked Up', '00:32:00'),
(25, 'Suresh B', 'In Transit', '00:35:00');


create table Payment(
payment_id INT PRIMARY KEY auto_increment,
order_id INT,
payment_mode Enum(
'Cash',
'Card',
'UPI',
'Wallet') Not null,
payment_status ENUM(
'Pending',
 'Completed',
 'Failed',
 'Refunded') NOT NULL,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payment (order_id, payment_mode, payment_status) VALUES 
(1, 'UPI', 'Completed'),
(2, 'Card', 'Completed'),
(3, 'Cash', 'Completed'),
(4, 'UPI', 'Pending'),
(5, 'Wallet', 'Completed'),
(6, 'Card', 'Failed'),
(7, 'UPI', 'Pending'),
(8, 'Cash', 'Completed'),
(9, 'Card', 'Completed'),
(10, 'Wallet', 'Completed'),
(11, 'UPI', 'Completed'),
(12, 'Cash', 'Pending'),
(13, 'Card', 'Completed'),
(14, 'Wallet', 'Completed'),
(15, 'Cash', 'Completed'),
(16, 'Card', 'Refunded'),
(17, 'UPI', 'Completed'),
(18, 'Wallet', 'Pending'),
(19, 'Cash', 'Completed'),
(20, 'Card', 'Completed'),
(21, 'UPI', 'Refunded'),
(22, 'Wallet', 'Completed'),
(23, 'Cash', 'Completed'),
(24, 'UPI', 'Completed'),
(25, 'Card', 'Completed');


create table Ratings_Reviews(
review_id INT PRIMARY KEY auto_increment,
customer_id INT,
restaurant_id INT,
rating INT CHECK(rating BETWEEN 1 AND 5),
review TEXT,
review_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);


INSERT INTO Ratings_Reviews (customer_id, restaurant_id, rating, review, review_date) VALUES
(1, 1, 5, 'Authentic Tamil meals, loved the sambar!', '2024-07-01'),
(2, 2, 4, 'Great sweets, especially the Mysore Pak.', '2024-06-28'),
(3, 3, 5, 'Soft idlis and crispy vadas!', '2024-06-20'),
(4, 4, 4, 'Biryani was flavorful and spicy.', '2024-06-15'),
(5, 5, 5, 'Best mini tiffin combo in town.', '2024-07-02'),
(6, 6, 2, 'Too much oil in the curry.', '2024-06-26'),
(7, 7, 4, 'Good portion, fast service.', '2024-06-29'),
(8, 8, 3, 'Food was ok, but service slow.', '2024-06-22'),
(9, 9, 5, 'Superb Chettinad chicken!', '2024-07-01'),
(10, 10, 4, 'Nice lemon rice and crispy chips.', '2024-06-30'),
(11, 11, 3, 'Average taste, decent price.', '2024-06-25'),
(12, 12, 5, 'Loved the pongal with ghee!', '2024-06-23'),
(13, 13, 4, 'Healthy dosa option with good chutney.', '2024-06-19'),
(14, 14, 4, 'Fresh uthappam, nice sambar.', '2024-07-03'),
(15, 15, 5, 'Sambar idli was hot and tasty.', '2024-06-21'),
(16, 16, 3, 'Curd rice was average.', '2024-06-28'),
(17, 17, 4, 'Crispy paniyaram and fast delivery.', '2024-07-01'),
(18, 18, 5, 'Delicious appam with coconut milk.', '2024-06-30'),
(19, 19, 4, 'Tasty tomato rice and good service.', '2024-06-29'),
(20, 20, 4, 'Rava kichadi was buttery and soft.', '2024-06-27'),
(21, 21, 5, 'Soft chapatis and spicy kurma!', '2024-06-24'),
(22, 22, 4, 'Poori was fluffy and chutney was good.', '2024-06-22'),
(23, 23, 5, 'Loved the vegetable biryani combo.', '2024-07-02'),
(24, 24, 3, 'Kesari was sweet but oily.', '2024-06-26'),
(25, 25, 5, 'Idiyappam with coconut milk was superb!', '2024-06-20');


select * from customers;
select * from restaurants;
select * from food_items;
select * from orders;
select * from delivery;
select * from payment;
select * from RATINGS_REVIEWS;

-- 1.List all customers who live in Chennai--
select * from customers where  address like "%chennai%";

-- 2. Display all food items that cost more than ₹100--
select * from food_items where price>100;

-- 3. Find all orders that are currently ‘Pending’--
select * from orders where  status='pending';

-- 4. Get the list of restaurants with a rating of 4.2 or higher--
select * from restaurants where rating>=4.2;

-- 5.Show all food items offered by ‘Anjappar Chettinad’--
select f.*
from restaurants r inner join food_items f on f.restaurant_id = r.restaurant_id 
where r.Name = 'Anjappar Chettinad';

-- 6.List all orders with customer names and their order status.--
select o.order_id,c.name as customer_name,o.status
from customers c inner join orders o on c.customer_id = o.customer_id;

-- 7. Find the most expensive food item and its restaurant--
select r.name,f.name as food_item,f.price
from 
restaurants r inner join food_items f on r.restaurant_id = f.restaurant_id
order by f.price  desc limit 1; 

-- 8.Show total number of orders placed by each customer--
select c.name, count(o.order_id) as total_orders
from customers c join orders o on c.customer_id = o.customer_id
group by c.name;

-- 9. List all customers who have never placed an order--
select c.*
from 
customers c left join orders o on c.customer_id = o.customer_id
where o.order_id is null;

-- 10.Find restaurants with more than 2 food items listed--
select r.name,count(f.item_id) as item_count
from restaurants r inner join food_items f on r.restaurant_id = f.restaurant_id
group by r.restaurant_id 
having count(f.item_id) >2; 

-- 11.Get the average order amount for all delivered orders--
select avg(total_amount) as order_amount
from
orders
where status = 'delivered';

-- 12.Calculate the total revenue received by each restaurant--
select r.name as restaurant_name,
sum(o.total_amount) as total_revenue
from restaurants r join food_items f on r.restaurant_id = f.restaurant_id
join orders o on f.item_id in (
SELECT Item_id FROM Food_Items WHERE Restaurant_id = r.Restaurant_id
    )
GROUP BY 
    r.Restaurant_id, r.Name;
    
    
    -- 13.List all restaurants that have received at least one 5-star rating--
    select name from restaurants where restaurant_id in
   ( select restaurant_id from ratings_reviews where
rating =5); 

-- 14.Show the customer who placed the most expensive order--
select name from customers where customer_id =
(select customer_id from orders order by total_amount desc limit 1);

-- 15.Find customers who have made payments using ‘UPI’ only--
select distinct c.name 
from customers c inner join orders o on c.customer_id = o.customer_id
inner join payment p on o.order_id = p.order_id
where p.payment_mode ='UPI';

-- 16. --
select d.delivery_id,
d.order_id,
d.delivery_status,
d.delivery_person,
o.total_amount,
o.order_date
from delivery d
inner join 
orders o
on d.order_id = o.order_id 
where 
d.delivery_status='delivered'
and d.estimated_time > '00:30:00';

-- 17. --
create view total_order_summary as 
select 
c.customer_id,
c.name as customer_name,
count(o.order_id) as total_orders,
sum(o.total_amount) as total_spent,
max(o.order_date) as last_order_date
from 
customers c 
join orders o on c.customer_id = o.order_id
group by 
c.customer_id,c.name;


select * from total_order_summary;

-- 19--  
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrdersByStatus`(
    IN input_status ENUM('Pending', 'Accepted', 'Preparing', 'Out for Delivery', 'Delivered', 'Cancelled')
)
BEGIN
    SELECT 
        o.order_id,
        c.name AS customer_name,
        o.total_amount,
        o.status,
        d.delivery_status,
        d.delivery_person,
        p.payment_mode,
        p.payment_status
    FROM
        orders o 
        JOIN customers c ON o.customer_id = c.customer_id 
        LEFT JOIN delivery d ON o.order_id = d.order_id
        LEFT JOIN payment p ON o.order_id = p.order_id
    WHERE o.status = input_status;
END //

DELIMITER ;
  
  
CALL GetOrdersByStatus('Delivered');

-- 19. Find customers who have placed more than 1 order and spent over ₹1000 in total --
select c.customer_id,c.name as customer_name,
count(o.order_id) as total_order,
sum(o.total_amount) as total_spent
from
customers c  inner join orders o on c.customer_id = o.customer_id
group by 
c.customer_id,c.name
having 
count(o.order_id) > 1 and sum(o.total_amount) >1000;

-- 20.List all restaurants that offer food items priced below ₹60 --
select distinct 
r.restaurant_id,
r.name as restaurant_name,
r.location
from
restaurants r 
join food_items f on r.restaurant_id = f.restaurant_id
where 
f.price < 60;