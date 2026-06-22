# 💊 BestMeds – Online Pharmacy & Healthcare Platform

BestMeds is a full-stack e-commerce platform for healthcare and pharmacy products. The application enables users to browse medicines, manage shopping carts, place orders, make online payments, and track purchases through an intuitive and responsive interface.

The platform also includes an administrative dashboard for managing products, categories, brands, promotional banners, users, and order processing.

---

# 🚀 Features

## 👤 Customer Features

* User Registration & Login
* Secure Password Hashing (bcrypt)
* Browse Medicines
* Category-wise Product Navigation
* Brand-wise Product Filtering
* Search Products
* Shopping Cart Management
* Multiple Delivery Addresses
* Order Placement
* Order History
* Loyalty Points System
* Responsive UI

## 💳 Payment Features

* Razorpay Payment Gateway Integration
* Online Payment Support
* Cash on Delivery Support
* Order Confirmation
* Transaction Tracking

## 🏪 Admin Features

* Admin Authentication
* Category Management
* Subcategory Management
* Brand Management
* Product Management
* Promotional Banner Management
* Coupon Management
* Order Monitoring
* User Management

---

# 🛠️ Tech Stack

## Frontend

* React.js
* Redux
* Material UI (MUI)
* React Router DOM
* Axios

## Backend

* Node.js
* Express.js
* Multer
* bcryptjs

## Database

* MySQL

## Payment Gateway

* Razorpay

---

# 🏗️ System Architecture

```text
User Browser
      │
      ▼
React + Redux Frontend
      │
      ▼
REST APIs (Axios)
      │
      ▼
Node.js + Express Backend
      │
      ▼
MySQL Database
      │
      ├── Users
      ├── Products
      ├── Orders
      ├── Categories
      ├── Coupons
      └── Banners
      │
      ▼
Razorpay Payment Gateway
```

---

# 🔐 Authentication

### Registration

* User enters credentials
* Password is hashed using bcrypt
* User record is stored in MySQL

### Login

* User submits email/mobile and password
* Backend validates credentials using bcrypt.compare()
* User session is maintained through Redux and localStorage

---

# 🛒 Product Catalog Structure

The application uses a hierarchical catalog design:

```text
Category
    ↓
Subcategory
    ↓
Brand
    ↓
Product
```

Example:

```text
Healthcare
    ↓
Vitamins
    ↓
MuscleBlaze
    ↓
Whey Protein
```

This structure enables efficient filtering and navigation.

---

# 🗄️ Database Schema

### Users

* User Details
* Authentication Information
* Loyalty Points

### User Addresses

* Multiple Delivery Addresses
* Address Selection During Checkout

### Products

* Product Information
* Pricing
* Offers
* Inventory

### Orders

* Purchase Details
* Delivery Status
* Razorpay Transaction IDs

### Marketing

* Promotional Banners
* Coupons
* Homepage Campaigns

---

# 📂 Project Structure

```text
bestmeds-project/
│
├── frontend/
│   ├── src/
│   ├── public/
│   └── package.json
│
├── backend/
│   ├── routes/
│   ├── controllers/
│   ├── middleware/
│   ├── pool.js
│   ├── app.js
│   └── package.json
│
└── README.md
```

---

# 💳 Payment Workflow

```text
User Checkout
      ↓
Select Online Payment
      ↓
Razorpay Checkout Opens
      ↓
Payment Successful
      ↓
Payment ID Generated
      ↓
Backend Purchase API
      ↓
Order Stored in MySQL
```

---

# 🖼️ Image Upload Management

The application uses **Multer** for image uploads.

Features:

* Product Images
* Brand Logos
* Category Icons
* Promotional Banners

Uploaded files are stored on the server and referenced through database records.

---

# 🧪 Testing

The application has been tested for:

* User Authentication
* Product Search
* Shopping Cart
* Checkout Process
* Payment Integration
* Order Management
* API Responses
* Database Operations

---

# ⚡ Challenges Faced

### Complex Product Hierarchy

Managing relationships between Categories, Subcategories, Brands, and Products while maintaining efficient database queries.

### Cart State Management

Using Redux to synchronize cart data across multiple components and pages.

### Payment Gateway Integration

Handling Razorpay payment callbacks and transaction processing securely.

### Image Upload Handling

Managing image storage, retrieval, and display using Multer and MySQL.

---

# 🚀 Future Enhancements

* JWT Authentication
* Email/OTP Password Recovery
* Prescription Upload Feature
* Doctor Consultation Module
* AI Health Assistant
* Real-Time Order Tracking
* Inventory Analytics Dashboard
* Docker Deployment
* Cloud Hosting
* Mobile Application

---

# 🎯 Key Learnings

* Full-Stack Development
* React + Redux State Management
* REST API Design
* MySQL Database Design
* Payment Gateway Integration
* Authentication & Security
* File Upload Management
* E-Commerce Application Development

---

# 👨‍💻 Author

**Kshitij Tomar**

B.Tech Information Technology
Bharati Vidyapeeth (Deemed to be University), Pune

GitHub: https://github.com/Kshitij027

---

## Interview Highlights

This project demonstrates:

* React Development
* Redux State Management
* Node.js Backend Development
* MySQL Database Design
* Razorpay Integration
* Authentication & Security
* E-Commerce Architecture
* RESTful API Development
