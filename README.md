### E-Commerce Website Project

This project is an e-commerce website developed using Java Servlets, JSP, HTML, CSS, Bootstrap, and Hibernate. It allows users to browse products, add them to the cart, and purchase them online. The website includes features for user authentication, product management, and order processing.

### Project Structure
- **Database:** MySQL database is used to store product, user, and order information. The database schema is provided in the `database.sql` file.
- **Backend:** Java Servlets are used to handle HTTP requests and process business logic. Hibernate is used as an ORM (Object-Relational Mapping) tool to interact with the database.
- **Frontend:** JSP pages are used for the user interface. Bootstrap is used for styling.

### Features
- User Registration and Login: Users can create an account and log in to access the website.
- Product Management: Admin users can add, edit, and delete products.
- Shopping Cart: Users can add products to their cart and proceed to checkout.
- Order Processing: Users can place orders and view their order history.
- Responsive Design: The website is mobile-friendly and adjusts to different screen sizes.

### How to Run
1. **Database Setup:** 
   - Create a MySQL database and import the schema from `database.sql`.
   - Update the database connection settings in `hibernate.cfg.xml`.

2. **Hibernate Configuration:**
   - Configure Hibernate mapping files for entities and update the `hibernate.cfg.xml` file.

3. **Deployment:**
   - Deploy the project to a servlet container like Apache Tomcat.
   - Access the website using the deployed URL (e.g., `http://localhost:8080/ecommerce/`).

### Project Structure
```
├── WebContent
│   ├── META-INF
│   ├── WEB-INF
│   │   ├── lib
│   │   ├── classes
│   │   └── web.xml
│   ├── css
│   ├── images
│   ├── js
│   ├── Components
│   │   ├── common_css_js.jsp
│   │   ├── common_modals.jsp
│   │   ├── Footer.jsp
│   │   ├── message.jsp
│   │   └──  navbar.jsp
│   │   
│   ├── aboutus.jsp
│   ├── admin.jsp
│   ├── cart.jsp
│   ├── contactus.jsp
│   ├── index.jsp
│   ├── login.jsp
│   ├── productDetails.jsp
│   ├── products.jsp
│   ├── register.jsp
│   ├── updateProfile.jsp
│   └── userDashboard.jsp
├── src
│   ├── com.learn.mycart.dao
│   ├── com.learn.mycart.entities
│   ├── com.learn.mycart.helper
│   └── com.learn.mycart.servlets
├── .gitignore
├── README.md
└── database.sql
```

### Technologies Used
- Java Servlets
- JSP
- HTML
- CSS
- Bootstrap
- Hibernate
- MySQL

### Contributors
- [Your Name]

### License
This project is licensed under the [MIT License](LICENSE).
