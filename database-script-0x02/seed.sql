-- User
INSERT INTO User(first_name, last_name, email, phone_number, role, created_at)
VALUES ('Kofi', 'Nti','kofi.nti@aboamail.com', 'admin',2025-04-30 13:10:02.047)

INSERT INTO User(first_name, last_name, email, phone_number, role, created_at)
VALUES ('Zubem', 'Amoah','zubazuba@aboamail.com', 'host',2025-03-3 13:10:02.047)

-- Property
INSERT INTO Property(name, description, location, pricepernight,created_at, updated_at)
VALUES ("Rizzy Base", "A home away from home", "Dzorwulu", 200.00, 2025-03-3 13:10:02.047, 2025-03-3 13:10:02.047)

INSERT INTO Property(name, description, location, pricepernight,created_at, updated_at)
VALUES ("Shaka Krib", "come one, come all", "Abelenkpe", 210.00, 2025-03-3 13:10:02.047, 2025-03-3 13:10:02.047)

-- Booking
INSERT INTO Booking(start_date ,end_date,total_price,status ,created_at)
VALUES (2025-03-3, 2025-03-10, 1800.00, "confirmed", 2025-03-3 13:10:02.047)

INSERT INTO Booking(start_date ,end_date,total_price,status ,created_at)
VALUES (2025-03-4, 2025-03-09, 3000.00, "pending", 2025-03-3 13:16:02.047)

-- Payment
INSERT INTO Payment(amount, payment_date, payment_method)
VALUES (1800.00, 2025-02-3, "credit_card")

INSERT INTO Payment(amount, payment_date, payment_method)
VALUES (7800.00, 2025-02-8, "paypal")

INSERT INTO Payment(amount, payment_date, payment_method)
VALUES (1800.00, 2025-02-3, "stripe")

--Review
INSERT INTO Review (user_id ,rating,comment,created_at)
VALUES (3818dc82-3c2a-4d8b-a308-9f58d291f6a9, 5, "Had an amazing at this location", 2025-03-3 13:16:02.047)

INSERT INTO Review (user_id ,rating,comment,created_at)
VALUES (bea7f59c-f488-4d38-9f73-0bdd4d98a5aa, 1, "There is even no fan to cool me down", 2025-03-3 13:16:02.047)

-- Message
INSERT INTO Message(message_id ,sender_id,recepient_id,message_body,sent_at)
VALUES (65ea1e04-e943-40e8-9034-a0df6cc4532a, 
        3cd38cf7-b54f-4102-b971-3e8894c79d69, 
        480cf3ae-96e9-45dd-8199-4045d017f0a6, 
        "Alpha Tango", 
        2025-03-3 13:16:02.047
        )

INSERT INTO Message(message_id ,sender_id,recepient_id,message_body,sent_at)
VALUES (65ea1e04-e943-40e8-9034-a0df6cc4532a, 
        3cd38cf7-b54f-4102-b971-3e8894c79d69, 
        480cf3ae-96e9-45dd-8199-4045d017f0a6, 
        "Hello Hi", 
        2024-03-3 13:16:02.047
        )