https://github.com/ankit1576/Pandeyji-store/assets/71921877/02a77db7-7876-4151-870e-260876ed4781

# E-Commerce Website Project

This project is an e-commerce website developed using Java Servlets, JSP, HTML, CSS, Bootstrap, and Hibernate. It allows users to browse products, add them to the cart, and purchase them online. The website includes features for user authentication, product management, and order processing.

## Project Screenshots

### Navigation

- [Registration Module](#registration-module)
- [Login Module](#login-module)
- [Nav Bar](#nav-bar)
- [Footer](#footer)
- [Login as Admin](#login-as-admin)
- [Add Category (Admin)](#add-category-admin)
- [Add Product (Admin)](#add-product-admin)
- [Index.jsp Page with Login](#indexjsp-page-with-login)
- [Toast Notifications](#toast-notifications)
- [Dynamic Category Fetch](#dynamic-category-fetch)
- [Dynamic Checkout Modal](#dynamic-checkout-modal)
- [Checkout Page](#checkout-page)
- [Payment Page using Razorpay](#payment-page-using-razorpay)
- [About Us Page](#about-us-page)
- [Contact Us Page](#contact-us-page)

### Registration Module
![Screenshot 1](ScreenShots/49eba89f-6298-4a54-9429-e98c157fd166.png)
![Screenshot 2](ScreenShots/c64203be-a72c-45e2-bfe8-1a6bb016d193.png)

#### Users in Database
![Screenshot](https://github.com/ankit1576/Pandeyji-store/blob/main/ScreenShots/Screenshot%202024-04-07%20181124.png)

### Login Module
![Screenshot](ScreenShots/0a622b80-93f0-44c9-b711-da1cba0281a2.png)

### Nav Bar
![Screenshot](https://github.com/ankit1576/Pandeyji-store/assets/71921877/e6653bbf-8e0e-49fc-98f4-50e8b5df7b7d)

### Footer
![Screenshot](https://github.com/ankit1576/Pandeyji-store/assets/71921877/8a41097e-0c53-4c40-a883-90227236194d)

### Login as Admin
![Screenshot](ScreenShots/1c1f0405-c92f-49b3-9373-1c95638ef8a3.png)

### Add Category (Admin)
![Screenshot 1](ScreenShots/1514b20f-705d-448e-88fb-c5fddeac722b.png)
![Screenshot 2](ScreenShots/09cb4833-c0a8-4ce3-b952-794518bd022e.png)

### Add Product (Admin)
![Screenshot 1](ScreenShots/c89bead9-2b4a-4308-bc36-01698b04ea41.png)
![Screenshot 2](ScreenShots/09cb4833-c0a8-4ce3-b952-794518bd022e.png)

### Index.jsp Page with Login
![Screenshot](ScreenShots/69fa9385-5406-4e11-bdd1-978dc890847c.png)

### Toast Notifications
![Screenshot](https://github.com/ankit1576/Pandeyji-store/blob/main/ScreenShots/Screenshot%202024-04-07%20193546.png)

### Dynamic Category Fetch
![Screenshot](https://github.com/ankit1576/Pandeyji-store/blob/main/ScreenShots/Screenshot%202024-04-07%20194137.png)
![Screenshot](https://github.com/ankit1576/Pandeyji-store/assets/71921877/3ecb34b9-6992-445f-bea5-f5fa48da6633)

### Dynamic Checkout Modal
![Screenshot](https://github.com/ankit1576/Pandeyji-store/blob/main/ScreenShots/Screenshot%202024-04-07%20193650.png)

### Checkout Page
![Screenshot](ScreenShots/bbeee164-5875-471b-8fa2-884e7469ca11.png)

### Payment Page using Razorpay
![Screenshot](https://github.com/ankit1576/Pandeyji-store/assets/71921877/93f85781-0662-42a5-95be-c0fbf7685b98)
![Screenshot](https://github.com/ankit1576/Pandeyji-store/assets/71921877/0ad6f351-da9c-4a51-83cf-94456ad16a43)

### About Us Page
![Screenshot](ScreenShots/43eb264c-1d4c-4271-b79f-a34115fb5612.png)

### Contact Us Page
![Screenshot](ScreenShots/687cbd7b-eefe-4cb7-a4ad-1bbd92114d2f.png)

## Project Structure

The project structure is as follows:

- **Database:** MySQL database is used to store product, user, and order information. The database schema is provided in the `Database Export` file.
- **Backend:** Java Servlets are used to handle HTTP requests and process business logic. Hibernate is used as an ORM (Object-Relational Mapping) tool to interact with the database.
- **Frontend:** JSP pages are used for the user interface. Bootstrap is used for styling.

## Technologies Used

- Java Servlet
- JSP
- HTML
- CSS
- Bootstrap
- Hibernate
- MySQL

## How to Run

1. **Database Setup:** 
   - Create a MySQL database and import the schema from `Database Export/DBpandeyji.sql`.
   - Update the database connection settings in `hibernate.cfg.xml`.

2. **Hibernate Configuration:**
   - Configure Hibernate mapping files for entities and update the `hibernate.cfg.xml` file.

3. **Deployment:**
   - Deploy the project to a servlet container like Apache Tomcat.
   - Access the website using the deployed URL (e.g., `http://localhost:8080/store/`).

## Project DATA FLOW DIAGRAM


      +----------------------+         +----------------------+         +----------------------+
      |                      |         |                      |         |                      |
      |      User Interface  +-------->+   Java Servlets      +-------->+      Database        |
      |                      |         |                      |         |                      |
      +-----------+----------+         +-----------+----------+         +-----------+----------+
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  +                                |                                |
               User Actions                        |                                |
                  +                                |                                |
                  |                                |                                |
                  v                                |                                |
      +-----------+----------+                     |                                |
      |                      |                     |                                |
      |   HTML/CSS/Bootstrap  |                    |                                |
      |                      |                     |                                |
      +-----------+----------+                     |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  v                                v                                v
      +-----------+----------+        +-----------+----------+         +-----------+----------+
      |                      |        |                      |         |                      |
      |      Login Page      |        |   LoginServlet.java  |         |   MySQL Database     |
      |                      |        |                      |         |                      |
      +-----------+----------+        +-----------+----------+         +-----------+----------+
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  +                                |                                |
               User Login                          |                                |
                  +                                |                                |
                  |                                |                                |
                  v                                |                                |
      +-----------+----------+                     |                                |
      |                      |                     |                                |
      |   Dashboard Page     |                     |                                |
      |                      |                     |                                |
      +-----------+----------+                     |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  v                                v                                v
      +-----------+----------+        +-----------+-----------+          +-----------+----------+
      |                      |        |                       |          |                      |
      |   Product Listing    |        |ProductOperationServlet|          |   Product Table      |
      |                      |        |                       |          |                      |
      +-----------+----------+        +-----------+-----------+          +-----------+----------+
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  +                                |                                |
               Product Details                     |                                |
                  +                                |                                |
                  |                                |                                |
                  v                                |                                |
      +-----------+----------+                     |                                |
      |                      |                     |                                |
      |   Add to Cart        |                     |                                |
      |                      |                     |                                |
      +-----------+----------+                     |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  v                                v                                v
      +-----------+----------+        +-----------+----------+         +-----------+----------+
      |                      |        |                      |         |                      |
      |   Cart Page          |        |   Update Cart        |         |   Order Table        |
      |                      |        |   Checkout           |         |                      |
      +-----------+----------+        +-----------+----------+         +-----------+----------+
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  |                                |                                |
                  +                                |                                |
               Order Confirmation                  |                                |
                  +                                |                                |
                  |                                |                                |
                  v                                |                                |
      +-----------+----------+                     |                                |
      |                      |                     |                                |
      |   Thank You Page     |                     |                                |
      |                      |                     |                                |
      +-----------+----------+                     |                                |
                                                   |                                |
                                                   |                                |
                                                   v                                v
                                          +-----------+----------+         +-----------+----------+
                                          |                      |         |                      |
                                          |   Database Updates   |         |   Database Tables    |
                                          |                      |         |                      |
                                          +----------------------+         +----------------------+


## Project Structure

```
./
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── learn/
│   │   │           └── mycart/
│   │   │               ├── dao/
│   │   │               │   ├── CategoryDao.java
│   │   │               │   ├── ProductDao.java
│   │   │               │   └── UserDao.java
│   │   │               ├── entities/
│   │   │               │   ├── Category.java
│   │   │               │   ├── Product.java
│   │   │               │   └── User.java
│   │   │               └── servlets/
│   │   │                   ├── LoginServlet.java
│   │   │                   ├── LogoutServlet.java
│   │   │                   ├── ProductOperationServlet.java
│   │   │                   ├── RegisterServlet.java
│   │   │                   └── UpdateProfileServlet.java
│   │   └── webapp/
│   │       ├── Components/
│   │       │   ├── Footer.jsp
│   │       │   ├── common_css_js.jsp
│   │       │   ├── common_modals.jsp
│   │       │   ├── crousal.jsp
│   │       │   ├── message.jsp
│   │       │   └── navbar.jsp
│   │       ├── META-INF/
│   │       │   └── context.xml
│   │       ├── WEB-INF/
│   │       │   ├── beans.xml
│   │       │   └── web.xml
│   │       ├── css/
│   │       │   ├── admin.css
│   │       │   ├── checkout.css
│   │       │   ├── home.css
│   │       │   ├── login.css
│   │       │   ├── navbar.css
│   │       │   └── register.css
│   │       └── js/
│   │           ├── about.jsp
│   │           ├── aboutus.jsp
│   │           ├── admin.jsp
│   │           ├── checkout.jsp
│   │           ├── contactus.jsp
│   │           ├── index.jsp
│   │           ├── login.jsp
│   │           ├── normal.jsp
│   │           ├── profile.jsp
│   │           ├── register.jsp
│   │           └── updateProfile.jsp
└── target/
    └── classes/
        ├── META-INF/
        │   ├── hibernate.cfg.xml
        │   └── persistence.xml
        └── com/
            └── learn/
                └── mycart/
                    ├── dao/
                    │   ├── CategoryDao.class
                    │   ├── ProductDao.class
                    │   └── UserDao.class
                    ├── entities/
                    │   ├── Category.class
                    │   ├── Product.class
                    │   └── User.class
                    ├── helper/
                    │   ├── FactoryProvider.class
                    │   └── Helper.class
                    └── servlets/
                        ├── LoginServlet.class
                        ├── LogoutServlet.class
                        ├── ProductOperationServlet.class
                        ├── RegisterServlet.class
                        └── UpdateProfileServlet.class
```

## Technologies Used
- Java Servlet
- JSP
- HTML
- CSS
- Bootstrap
- Hibernate
- MySQL

---
Certainly! Here's an example README.md file for some important folders in your project:

---

# Project Structure Overview

This repository contains the source code for an e-commerce website. Below is an overview of the most important folders and their contents:

## `src/main/java/com/learn/mycart/dao`

This folder contains Data Access Object (DAO) classes responsible for interacting with the database. The important files are:

- `CategoryDao.java`: Handles database operations related to product categories.
- `ProductDao.java`: Handles database operations related to products.
- `UserDao.java`: Handles database operations related to users.

## `src/main/java/com/learn/mycart/entities`

Contains entity classes representing database tables. Key files include:

- `Category.java`: Entity class for product categories.
- `Product.java`: Entity class for products.
- `User.java`: Entity class for users.

## `src/main/java/com/learn/mycart/helper`

Contains helper classes and utilities. Notable files are:

- `FactoryProvider.java`: Provides database session factory for Hibernate.
- `Helper.java`: General-purpose helper methods.

## `src/main/java/com/learn/mycart/servlets`

Contains servlet classes that handle HTTP requests. Important servlets are:

- `LoginServlet.java`: Handles user login functionality.
- `LogoutServlet.java`: Handles user logout functionality.
- `ProductOperationServlet.java`: Performs operations on products (e.g., add, edit, delete).
- `RegisterServlet.java`: Handles user registration.
- `UpdateProfileServlet.java`: Handles updating user profiles.

## `src/main/resources`

Contains resource files, including database configuration. Key files include:

- `META-INF/persistence.xml`: Configuration file for JPA persistence.
- `hibernate.cfg.xml`: Configuration file for Hibernate.

## `webapp`

Contains web application resources such as JSP files, CSS, JavaScript, and images. Important folders are:

- `WEB-INF`: Contains configuration files and JSP files.
- `css`: Contains CSS files for styling the website.
- `images`: Contains images used in the website.
- `js`: Contains JavaScript files.

---


