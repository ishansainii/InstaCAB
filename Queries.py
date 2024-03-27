import mysql.connector as connector


print("Welcome to InstaCAB")

# Establish a connection to the database
connection1 = connector.connect(
    host="localhost",
    user="root",
    password="kaamkaro",
    database="InstaCAB"
)


# check if connection is succesfully occured
if connection1.is_connected():
    print(f"Succesfully connnected to database {connection1.database}")
    print()
else:
    print("Connection failed !")
    quit()


# Embedded Queries

def embedded_query1():

    print("Query :-")
    print("Riders who have spent more than a particular amount on rides in the year 2022.")
    print()

    amount = int(input("Enter the amount:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT p.RiderID, p.FirstName, p.LastName, SUM(py.Amount) as TotalSpent
    FROM Passenger p 
    INNER JOIN Payment py ON p.RiderID = py.RiderID
    INNER JOIN Trip t ON p.RiderID = t.RiderID AND YEAR(py.PaymentDate) = 2022 AND t.TripID = py.TransactionID
    GROUP BY p.RiderID 
    HAVING SUM(py.Amount) > %s;''', (amount,))

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def embedded_query2():
    print("Query :-")
    print('''Top 4 drivers with the highest average rating, along with their first and last names and 
    total number of trips they have completed. 
    Sort the result by the number of trips in descending order.''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT d.FirstName, d.LastName, COUNT(t.TripID) AS TotalTrips, AVG(d.Rating) AS AvgRating
    FROM Driver d 
    INNER JOIN Trip t ON d.DriverID = t.DriverID 
    GROUP BY d.DriverID 
    ORDER BY AvgRating DESC, TotalTrips DESC LIMIT 4 ''')

    data = cursor.fetchall()

    # Print the data1
    for tuple in data:
        print(tuple)

    print()


def embedded_query3():
    print("Query :-")
    print('''Calculate the average rating for a specific driver.''')
    print()
    driverid = int(input("Enter the driver id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT AVG(Rating)
    FROM Driver
    WHERE DriverID = %s;''', (driverid,))

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def embedded_query4():
    print("Query :-")
    print('''Insert a value (AdminID=101, FirstName = hello ,
    LastName = world, Password = python3) into admin.''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''INSERT INTO Admin(AdminID, FirstName, LastName, Password)
    VALUES ({}, '{}', '{}', '{}')'''.format(103, 'hello', 'world', 'python'))

    connection1.commit()

    print("Successfully commited")

    print()


def embedded_query5():
    print("Query :-")
    print('''Update the fare for a specific given trip (trip id) to a given amount''')
    print()

    trip = int(input("Enter the trip id:- "))
    amount = int(input("Enter the updated amount:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Trip SET Fare = {} WHERE TripID = {};'''.format(amount, trip))

    connection1.commit()

    print("Successfully commited")

    print()


# Trigger Queries
def trigger_query1():
    print("Query :-")
    print('''To make trip rating as 0 if any passenger gives rating as negative''')
    print()

    tripRating = int(input("Enter the trip Rating:- "))
    tripID = int(input("Enter the trip id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data

    cursor.execute('''update Trip set triprating = {} 
    where tripid = {};'''.format(tripRating, tripID))

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    connection1.commit()

    print("Successfully commited")
    # cursor.execute('''SELECT * FROM TRIP;''')

    print()


def trigger_query2():
    print("Query :-")
    print('''Triggers insufficient amount if balance more then current balance''')
    print()

    Balance = int(input("Enter the Balance:- "))
    riderID = int(input("Enter the rider id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data

    cursor.execute('''update Account set balance = {} where riderid = {};'''.format(
        Balance, riderID))

    connection1.commit()

    print("Successfully commited")

    print()


# OLAP Queries
def olap_query1():

    print("Query :-")
    print('''Total number of riders per account type per state.''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT Passenger.State, CASE 
        WHEN EXISTS(SELECT * FROM PremiumAccount WHERE AccountNumber = Account.RiderID) THEN 'Premium' 
        ELSE 'Normal'
    END AS AccountType, COUNT(*) AS Num_Riders
    FROM Passenger
    JOIN Account ON Passenger.RiderID = Account.RiderID
    GROUP BY Passenger.State, AccountType WITH ROLLUP;''')

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def olap_query2():
    print("Query :-")
    print('''total number of trips and total fare earned by each driver, 
    grouped by their first and last names''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT
        d.FirstName AS DriverFirstName,
        d.LastName AS DriverLastName,
        COUNT(t.TripID) AS TotalTrips,
        SUM(ABS(t.Fare)) AS TotalFare
    FROM
        Driver d
        JOIN Trip t ON d.DriverID = t.DriverID
        JOIN Passenger p ON t.RiderID = p.RiderID
        JOIN Admin a ON a.AdminID = p.AdminID
    GROUP BY
        d.FirstName,
        d.LastName
    WITH ROLLUP;''')

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def olap_query3():
    print("Query :-")
    print(''' total number of trips and average rating for each driver, 
    as well as the grand total for all drivers''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT
        d.FirstName,
        d.LastName,
        COUNT(t.TripID) AS TotalTrips,
        AVG(d.Rating) AS AvgRating
    FROM
        Driver d
        JOIN Trip t ON d.DriverID = t.DriverID
    GROUP BY
        d.FirstName,
        d.LastName
    WITH ROLLUP
    HAVING
        GROUPING(d.FirstName) = 0 AND
        GROUPING(d.LastName) = 0
    ORDER BY
        AVG(d.Rating) DESC,
        TotalTrips DESC;''')

    data = cursor.fetchmany(4)

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def olap_query4():
    print("Query :-")
    print('''List all riders who have made a payment on a specific date ''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT Passenger.RiderID, Passenger.FirstName, Passenger.LastName, 
        Payment.PaymentDate, SUM(Payment.Amount) AS TotalAmount
    FROM Passenger
    INNER JOIN Payment ON Passenger.RiderID = Payment.RiderID
    GROUP BY ROLLUP(Passenger.RiderID, Passenger.FirstName, Passenger.LastName, Payment.PaymentDate)
    HAVING Payment.PaymentDate = '2022-04-06';''')

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def olap_query5():
    print("Query :-")
    print('''Total number of drivers per location ''')
    print()

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute('''SELECT Location, COUNT(*) AS Num_Drivers
    FROM Driver
    GROUP BY Location WITH ROLLUP;''')

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def ncTransaction1():
    print("Transaction :-")
    print('''update a driver rating:-''')
    print()

    connection1.start_transaction()

    driver = int(input("Enter the driver id:- "))
    rating = int(input("Enter the updated rating:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Driver SET Rating = {} WHERE DriverID = {};'''.format(rating, driver))

    connection1.commit()

    print("Successfully commited")

    print()


def ncTransaction2():
    print("Transaction :-")
    print('''Update Rider's Current Location:-''')
    print()

    connection1.start_transaction()

    rider = int(input("Enter the rider id:- "))
    location = (input("Enter the updated location:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Passenger SET CurrentLocation = '{}' WHERE RiderID = {};'''.format(location, rider))

    connection1.commit()

    print("Successfully commited")

    print()


def ncTransaction3():
    print("Transaction :-")
    print('''Get Driver's Location:-''')
    print()

    connection1.start_transaction()

    driver = int(input("Enter the driver id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''SELECT Location FROM Driver WHERE DriverID = {};'''.format(driver))

    data = cursor.fetchall()

    # Print the data
    for tuple in data:
        print(tuple)

    print()


def ncTransaction4():

    print("Transaction :-")
    print('''Deducting 5 from Rider Balance as late fee:-''')
    print()

    connection1.start_transaction()

    rider = int(input("Enter the rider id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Account SET Balance = Balance - 5 WHERE RiderID = {};'''.format(rider))

    connection1.commit()

    print("Successfully commited")

    print()


def cTransaction1():
    print("Transaction :-")
    print('''Deducting 100 from Rider Balance:-''')
    print()

    connection1.start_transaction()

    rider = int(input("Enter the rider id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Account SET Balance = Balance - 100 WHERE RiderID = {};'''.format(rider))

    connection1.commit()

    print("Successfully commited")

    print()


def cTransaction2():
    print("Transaction :-")
    print('''Adding 50 to Rider Balance:-''')
    print()

    connection1.start_transaction()

    rider = int(input("Enter the rider id:- "))

    # Create a cursor object to execute SQL queries
    cursor = connection1.cursor()

    # Execute a SELECT query and fetch the data
    cursor.execute(
        '''UPDATE Account SET Balance = Balance + 50 WHERE RiderID = {};'''.format(rider))

    connection1.commit()

    print("Successfully commited")

    print()


admin = ["az", "bz", "cz"]
driver = ["az", "bz", "cz"]
rider = ["az", "bz", "cz"]

start = False

print("Welcome to the InstaCab Program!")
print("1. Admin")
print("2. Driver")
print("3. Rider")
print("4. Quit")
print("\n")

choice = int(input("Choose your option: "))
adminPermission = False
driverPermission = False
riderPermission = False

if choice == 1:
    adminid = int(input("Enter your admin id: "))
    password = (input("Enter your password: "))
    if password == admin[adminid-1]:
        start = True
        adminPermission = True

    else:
        print("Incorrect Credentials")
        start = False

elif choice == 2:
    driverid = int(input("Enter your driver id: "))
    password = (input("Enter your password: "))
    if password == driver[driverid-1]:
        start = True
        driverPermission = True

    else:
        print("Incorrect Credentials")
        start = False

elif choice == 3:
    riderid = int(input("Enter your rider id: "))
    password = (input("Enter your password: "))
    if password == rider[riderid-1]:
        start = True
        riderPermission = True

    else:
        print("Incorrect Credentials")
        start = False

else:
    start = False

# Menu-driven program
while start and adminPermission:
    # print("Welcome to the InstaCab Program!")
    print("\n")
    print("Please choose an option:")
    print("1. Embedded Queries")
    print("2. Trigger Queries")
    print("3. OLAP Queries")
    print("4. Transactions")
    print("5. Shedules")
    print("6. Admin only commands")
    print("0. Exit")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        print("Embedded Queries")
        print("1. Query 1")
        print("2. Query 2")
        print("3. Query 3")
        print("4. Query 4")
        print("5. Query 5")
        query_choice = int(input("Enter your choice: "))

        if query_choice == 1:
            embedded_query1()
        elif query_choice == 2:
            embedded_query2()
        elif query_choice == 3:
            embedded_query3()
        elif query_choice == 4:
            embedded_query4()
        elif query_choice == 5:
            embedded_query5()
        else:
            print("Invalid choice")

    elif choice == 2:
        print("Trigger Queries")
        print("1. Query 1")
        print("2. Query 2")
        query_choice = int(input("Enter your choice: "))

        if query_choice == 1:
            trigger_query1()
        elif query_choice == 2:
            trigger_query2()
        else:
            print("Invalid choice")

    elif choice == 3:
        print("OLAP Queries")
        print("1. Query 1")
        print("2. Query 2")
        print("3. Query 3")
        print("4. Query 4")
        print("5. Query 5")
        query_choice = int(input("Enter your choice: "))

        if query_choice == 1:
            olap_query1()
        elif query_choice == 2:
            olap_query2()
        elif query_choice == 3:
            olap_query3()
        elif query_choice == 4:
            olap_query4()
        elif query_choice == 5:
            olap_query5()
        else:
            print("Invalid choice")

    elif choice == 4:
        print("Transactions")
        print("1. Conflict Transactions")
        print("2. Non Conflict Transactions")
        query_choice = int(input("Enter your choice: "))

        if query_choice == 1:
            print("Conflict Transactions")
            print("1. Transaction 1")
            print("2. Transaction 2")
            transaction_choice = int(input("Enter your choice: "))

            if transaction_choice == 1:
                cTransaction1()
            elif transaction_choice == 2:
                cTransaction2
            else:
                print("Invalid choice")

        elif query_choice == 2:
            print("Non Conflict Transactions")
            print("1. Transaction 1")
            print("2. Transaction 2")
            print("3. Transaction 3")
            print("4. Transaction 4")
            transaction_choice = int(input("Enter your choice: "))

            if transaction_choice == 1:
                ncTransaction1()

            elif transaction_choice == 2:
                ncTransaction2()

            elif transaction_choice == 3:
                ncTransaction3()

            elif transaction_choice == 4:
                ncTransaction4()

            else:
                print("Invalid choice")

        else:
            print("Invalid choice")

    elif choice == 5:
        print("Shedules:-")
        print("1. Conflicting serializable")
        print("2. Non Conflicting serializable")
        sChoice = int(input("Enter your choice:- "))

        if sChoice == 1:
            print('''
            Conflicting serializable Shedule

            Transaction 1 :- update a driver rating
            Transaction 2 :- Update Rider's Current Location:-

            ''')
            # Create a cursor object to execute SQL statements
            mycursor = connection1.cursor()

            # Begin a transaction
            connection1.start_transaction()

            # Lock the driver table for transaction 1
            mycursor.execute("LOCK TABLES Driver WRITE")

            # Execute transaction 1
            driver = int(input("Enter the driver id:- "))
            rating = int(input("Enter the updated rating:- "))
            mycursor.execute(
                '''UPDATE Driver SET Rating = {} WHERE DriverID = {};'''.format(rating, driver))

            # Unlock the driver table
            mycursor.execute("UNLOCK TABLES")

            # Lock the passenger table for transaction 2
            mycursor.execute("LOCK TABLES Passenger WRITE")

            # Execute transaction 2
            rider = int(input("Enter the rider id:- "))
            location = (input("Enter the updated location:- "))
            mycursor.execute(
                '''UPDATE Passenger SET CurrentLocation = '{}' WHERE RiderID = {};'''.format(location, rider))

            # Unlock the rides table
            mycursor.execute("UNLOCK TABLES")

            # Commit the transaction
            connection1.commit()
            print("Transaction commited")

        elif sChoice == 2:
            print('''
            Non Conflicting serializable Shedule

            Transaction 1 :- Deducting 100 from Rider Balance:-
            Transaction 2 :- Adding 50 to Rider Balance:-

            ''')
            # Create a cursor object to execute SQL statements
            mycursor = connection1.cursor()

            # Begin a transaction
            connection1.start_transaction()

            # Execute transaction 1
            rider = int(input("Enter the rider id:- "))
            mycursor.execute(
                '''UPDATE Account SET Balance = Balance - 100 WHERE RiderID = {};'''.format(rider))

            # Commit transaction 1
            connection1.commit()

            # Begin a new transaction
            connection1.start_transaction()

            # Execute transaction 2
            mycursor.execute(
                '''UPDATE Account SET Balance = Balance + 50  WHERE RiderID = {};'''.format(rider))

            # Commit transaction 2
            connection1.commit()

    elif choice == 6:
        if adminPermission == True:
            print("Commands Available only for admin")
            print("1. Viewing details of all drivers")
            print("2. Viewing details of all rider")
            inpot = int(input("Enter your choice:- "))
            if inpot == 1:
                print("Query :-")
                print()
                print("Viewing details of all drivers")

                # Create a cursor object to execute SQL queries
                cursor = connection1.cursor()

                # Execute a SELECT query and fetch the data
                cursor.execute('''select * from driver''')

                data = cursor.fetchall()

                # Print the data
                for tuple in data:
                    print(tuple)

                print()

            if inpot == 2:
                print("Query :-")
                print()
                print("Viewing details of all riders")

                # Create a cursor object to execute SQL queries
                cursor = connection1.cursor()

                # Execute a SELECT query and fetch the data
                cursor.execute('''select * from passenger''')

                data = cursor.fetchall()

                # Print the data
                for tuple in data:
                    print(tuple)

                print()

        else:
            print("Seek admin permission")

    elif choice == 0:
        print("Exiting program...")
        start = False

    else:
        print("Invalid choice")


# Menu-driven program
while start and riderPermission:
    # print("Welcome to the InstaCab Program!")
    print("\n")
    print("Please choose an option:")
    print("1. Select nearby driver")
    print("2. Wallet Balance")
    print("0. Exit")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        print("Query :-")
        print("Select nearby driver")
        print()

        # Create a cursor object to execute SQL queries
        cursor = connection1.cursor()

        # Execute a SELECT query and fetch the data
        cursor.execute('''select FirstName from driver;''')

        data = cursor.fetchall()

        # Print the data
        for tuple in data:
            print(tuple)

        print()

    elif choice == 2:

        print("Query :-")
        print("Wallet Balance")
        print()

        # Create a cursor object to execute SQL queries
        cursor = connection1.cursor()

        # Execute a SELECT query and fetch the data
        cursor.execute(
            '''select balance from account where riderid = %s;''', (riderid,))

        data = cursor.fetchall()

        # Print the data
        for tuple in data:
            print(tuple)

        print()

    elif choice == 0:
        print("Exiting program...")
        start = False

    else:
        print("Invalid choice")

# Menu-driven program
while start and driverPermission:
    # print("Welcome to the InstaCab Program!")
    print("\n")
    print("Please choose an option:")
    print("1. Select nearby riders")
    print("2. Wallet Balance")
    print("0. Exit")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        print("Query :-")
        print("view nearby rider")
        print()

        # Create a cursor object to execute SQL queries
        cursor = connection1.cursor()

        # Execute a SELECT query and fetch the data
        cursor.execute('''select FirstName from riders;''')

        data = cursor.fetchall()

        # Print the data
        for tuple in data:
            print(tuple)

        print()

    elif choice == 2:

        print("Query :-")
        print("Wallet Balance")
        print()

        # Create a cursor object to execute SQL queries
        cursor = connection1.cursor()

        # Execute a SELECT query and fetch the data
        cursor.execute(
            '''select balance from account where riderid = %s;''', (riderid,))

        data = cursor.fetchall()

        # Print the data
        for tuple in data:
            print(tuple)

        print()

    elif choice == 0:
        print("Exiting program...")
        start = False

    else:
        print("Invalid choice")

connection1.close()
print("Thank you for using InstaCAB")
print("Succesfully disconnected to database")
print()
