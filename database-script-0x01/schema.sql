CREATE TABLE User (
    user_id UUID PRIMARY KEY, 
    first_name varchar(225) NOT NULL, 
    last_name varchar(225) NOT NULL, 
    email varchar(225) NOT NULL UNIQUE,
    password_hash varchar(225) NOT NULL,
    phone_number varchar(225) NULL, 
    role ENUM("guest","host","admin") NOT NULL, 
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    )
    CREATE INDEX idx_email ON User(email)

CREATE TABLE Property (
    property_id UUID PRIMARY KEY,
    host_id UUID FOREIGN KEY REFERENCES User(user_id),
    name varchar(200) NOT NULL,
    description text NOT NULL,
    location varchar NOT NULL,
    pricepernight DECIMAL(8,2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
)

CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID FOREIGN KEY REFERENCES Property(property_id),
    user_id UUID FOREIGN KEY REFERENCES User(user_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(8,2) NOT NULL,
    status ENUM("pending","confirmed","cancelled") NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Payment (
    payment_id UUID PRIMARY KEY,
    booking_id UUID FOREIGN KEY REFERENCES Booking(booking_id),
    amount DECIMAL(8,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
)

CREATE TABLE Review (
    review_id UUID PRIMARY KEY,
    property_id UUID FOREIGN KEY REFERENCES Property(property_id),
    user_id UUID FOREIGN KEY REFERENCES User(user_id),
    rating INTEGER CHECK(rating >= 1 AND rating <= 5) NOT NULL,
    comment TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Message (
    message_id UUID PRIMARY KEY,
    sender_id UUID FOREIGN KEY REFERENCES User(user_id),
    recepient_id UUID FOREIGN KEY REFERENCES User(user_id),
    message_body TEXT NOT NULL,
    sent_at DATETIME DEFAULT CURRENT_TIMESTAMP
)