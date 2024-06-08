# Student Information Management System

This project is a University Management System with three user panels: Admin, Teacher, and Student. The system is built using PHP, Bootstrap, HTML, CSS, JavaScript, and MySQL.

## Features

### 1. Admin Panel
- **Manage Students**: Add, remove, modify student details, and update passwords if forgotten.
- **Manage Teachers**: Add, remove, modify teacher details, and update passwords if forgotten.
- **Course Management**: Add courses for students and teachers.
- **Fee Management**: Add fees for students.
- **Settings**: Update the current semester of the university.

### 2. Teacher Panel
- **Manage Results**: Add results for students as given by authority or admin.
- **Password Management**: Change password.
- **GPA Calculations**: Calculate SGPA and CGPA.
- **Profile**: View and update profile details.

### 3. Student Panel
- **Course Management**: Show registered courses.
- **Results**: View results.
- **Fee Management**: View fee details.
- **Profile**: View and update profile details.
- **Password Management**: Update password.

## Getting Started

### Prerequisites
- PHP
- MySQL
- Web Server (e.g., Apache)
- Web Browser

### Installation
1. **Clone the repository**
    ```bash
    git clone https://github.com/coderzaman/Student-Management-System.git
    cd Student-Management-System.git
    ```
2. **Import the Database**
    - Create a database named `sms_db`.
    - Import the `sms_db.sql` file located in the `database` directory into your MySQL database.

3. **Configure Database**
    - Update the database configuration in `config.php` with your MySQL credentials:
    ```php
    $sName = "localhost";
    $uName = "root";
    $pass  = "";
    $db_name = "sms_db";
    ```

4. **Start the Web Server**
    - Ensure your web server is running and place the project files in the server's root directory (e.g., `htdocs` for XAMPP).

5. **Access the Application**
    - Open your web browser and navigate to `http://localhost/student-information-system`.
    - For access addmint and teacher Sign in page: `http://localhost/student-information-system/other.php`.

## Login Details

### Admin
- **Username**: `admin`
- **Password**: `123`

### Teacher
- **Username**: Check the database for the teacher's username.
- **Password**: `123`, `1234`, or `123456` (for a few teachers).

### Student
- **Username**: Check the database for the student's username.
- **Password**: `123`, `1234`, or `123456` (for a few students).

## Technologies Used
- **Backend**: PHP
- **Frontend**: Bootstrap, HTML, CSS, JavaScript
- **Database**: MySQL

## Contributing
Contributions are welcome! Please create a pull request with a detailed description of your changes.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact
For any inquiries or feedback, please contact us at [coder.aktar@gmail.com].
