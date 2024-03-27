# InstaCAB
## Run the following command in terminal one by one

1. pip install mysql-connector-python
2. export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages
3. export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages/mysql-connector-python

### Database Setup

1. **Import SQL Script:**
   - In the repository, you will find an exported SQL script named `SQL_Script.sql`.
   - Import this script into your MySQL database using a MySQL client or command line:
     ```bash
     mysql -u your_user -p your_password InstaCAB < SQL_Script.sql
     ```
     Replace `your_user` and `your_password` with your MySQL credentials.

2. **Review SQL Script:**
   - Before importing, you may review the `SQL_Script.sql` file to understand the database structure.

### Connecting to the Database

**Update Database Connection:**
   - Open the Python scripts and update the database connection details:
     ```python
     # Replace these values with your actual MySQL database connection details
     host = "your_host"
     user = "your_user"
     password = "your_password"
     database = "InstaCAB"
     ```

### Python Dependencies

1. **Import Required Modules:**
   - Before running the provided Python scripts, ensure that you have the necessary dependencies installed. You can install them using the following commands:
     ```bash
     pip install mysql-connector-python
     ```

2. **Required Imports:**
   - In each Python script (`main.py`, etc.), you will find the following imports at the beginning of the file. Make sure to include them in your code:
     ```python
     import mysql.connector as connector
     from datetime import datetime
     import random
     ```
     These imports are essential for establishing a connection to the MySQL database, handling date and time operations, and generating random values.


### Python Functionality

1. **Running Python Scripts:**
   - Execute the provided Python scripts using a Python interpreter (Python 3 recommended).
   - The scripts provide essential functionality for interacting with the cab booking app database.

2. **Utilizing the Provided Functions:**
   - Within each Python script, you will find a set of functions designed to streamline essential operations, including tasks like viewing details, booking rides, and updating entities.

3. **Customization:**
   - Tailor the Python scripts to suit your application's specific requirements by modifying the functions or integrating them into your existing codebase.

### Notes

1. **Python Environment:**
   - Ensure that you have a suitable Python environment installed on your system (preferably Python 3.x).

2. **MySQL Server:**
   - Make sure you have a MySQL server installed and running on your machine before executing the Python scripts.

3. **Database Setup:**
   - Prior to running the Python scripts, it is assumed that you have imported the provided SQL script (`SQL_Script.sql`) into your MySQL database. Review the script for database setup details.

4. **Contact Information:**
   - For any inquiries or assistance related to the cab booking app or these scripts, please contact the designated app maintainer.

Feel free to reach out if you encounter any issues or require further clarification.

**Note:** Adjustments to the database connection details and other configuration parameters should align with your specific environment and application setup.

