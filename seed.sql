DROP DATABASE IF EXISTS employeetrackerDB;

CREATE DATABASE employeetrackerDB;

USE employeetrackerDB;

CREATE TABLE department
(
    id INT
    AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR
    (30)
);

    CREATE TABLE role
    (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR
        (30),
    salary DECIMAL
        (8,2),
    department_id INT
);

        CREATE TABLE employee
        (
            id INT
            AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR
            (30),
    last_name VARCHAR
            (30),
    role_id INT,
    manager_id INT
);

            INSERT INTO department
                (name)
            VALUES('Sales'),
                ('HR'),
                ('Temp'),
                ('Management');

            INSERT INTO role
                (title,salary,department_id)
            VALUES("Jr salesman", 3000, 1),
                ("Big Boss Guy", 1200000000, 1),
                ("Tech support", 5, 2),
                ("Small Boss Guy", 1, 2);

            INSERT INTO role
                (title,salary,department_id)
            VALUES("Accoutant", 23000, 3),
                ("Secretary", 155, 3),
                ("Manager", 550000, 4),
                ("Chief of advertisement", 23580000, 4);

            INSERT INTO employee
                (first_name,last_name,role_id,manager_id)
            VALUES('Big', 'Bossman', 4, null),
                ('Walter', "White", 7, null),
                ('John', "Cena", 8, 2),
                ('Austin', 'Powers', 1, null);

            SELECT *
            FROM department;
            SELECT *
            FROM role;
            SELECT *
            FROM employee;