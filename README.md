# Java Servlet + JDBC CRUD Application

This project demonstrates a Java web application using Servlet and JDBC to perform CRUD operations on database records.

## Features
- Insert new user records
- View all records
- Update existing records
- Delete records
- Java Servlet + JSP + MySQL

## Tech Stack
- Java 17
- Maven
- Servlet API
- JSP + JSTL
- MySQL JDBC Driver
- Tomcat

## Database Setup
Run this SQL in MySQL:

```sql
CREATE DATABASE crud_db;

USE crud_db;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(100) NOT NULL
);
```

## Configuration
Update the database credentials in:

`src/main/java/com/example/util/DBUtil.java`

```java
private static final String URL = "jdbc:mysql://localhost:3306/crud_db?useSSL=false&serverTimezone=UTC";
private static final String USER = "root";
private static final String PASSWORD = "root";
```

## Build
```bash
mvn clean package
```

## Run
Deploy the generated WAR file to Tomcat:

```bash
cp target/java-servlet-jdbc-crud.war $TOMCAT_HOME/webapps/
```

Then open:

```text
http://localhost:8080/java-servlet-jdbc-crud/
```

## Project Structure
```text
java-servlet-jdbc-crud/
├── pom.xml
├── src/
│   └── main/
│       ├── java/
│       │   └── com/example/
│       │       ├── controller/UserServlet.java
│       │       ├── dao/UserDAO.java
│       │       ├── model/User.java
│       │       └── util/DBUtil.java
│       └── webapp/
│           ├── index.jsp
│           ├── addUser.jsp
│           ├── editUser.jsp
│           ├── listUsers.jsp
│           └── WEB-INF/web.xml
└── target/
```

## Notes
This is a basic CRUD application intended for learning and beginner-friendly understanding of Java web application development with Servlet and JDBC.
