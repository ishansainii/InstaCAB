import mysql.connector as connector
from datetime import datetime
import random

# ----------------------------------------------------------------
## All Function are defined 

# Establishing a connection to the MySQL database
def connect_to_database():
    return connector.connect(
        host="localhost",
        user="root",
        password="kaamkaro",
        database="InstaCAB"
    )

# Function to print details of all drivers
def print_all_drivers():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT * FROM Driver"
        cursor.execute(query)
        drivers = cursor.fetchall()

        for driver in drivers:
            print("Driver ID:", driver[1])
            print("First Name:", driver[2])
            print("Last Name:", driver[3])
            print("Rating:", driver[4])
            print("Location:", driver[5])
            print("License Number:", driver[7])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print details of a specific driver by their ID
def print_driver_by_id(driver_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT * FROM Driver WHERE DriverID = %s"
        cursor.execute(query, (driver_id,))
        driver = cursor.fetchone()

        if driver:
            print("Driver ID:", driver[1])
            print("First Name:", driver[2])
            print("Last Name:", driver[3])
            print("Rating:", driver[4])
            print("Location:", driver[5])
            print("License Number:", driver[7])
        else:
            print("Driver not found with ID:", driver_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print top 4 drivers according to their average rating
def print_top_rated_drivers():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT DriverID, AVG(TripRating) AS AvgRating FROM Trip GROUP BY DriverID ORDER BY AvgRating DESC LIMIT 4"
        cursor.execute(query)
        top_drivers = cursor.fetchall()

        for driver in top_drivers:
            print("Driver ID:", driver[0])
            print("Average Rating:", driver[1])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to get drivers at a particular location
def print_drivers_by_location(location):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT * FROM Driver WHERE Location = %s"
        cursor.execute(query, (location,))
        drivers = cursor.fetchall()

        for driver in drivers:
            print("Driver ID:", driver[1])
            print("First Name:", driver[2])
            print("Last Name:", driver[3])
            print("Rating:", driver[4])
            print("Location:", driver[5])
            print("License Number:", driver[7])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print details of all passengers
def print_all_passengers():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT * FROM Passenger"
        cursor.execute(query)
        passengers = cursor.fetchall()

        for passenger in passengers:
            print("Passenger ID:", passenger[1])
            print("First Name:", passenger[2])
            print("Last Name:", passenger[3])
            print("Location:", passenger[6])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print details of a specific passenger by their ID
def print_passenger_by_id(passenger_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT * FROM Passenger WHERE RiderID = %s"
        cursor.execute(query, (passenger_id,))
        passenger = cursor.fetchone()

        if passenger:
            print("Passenger ID:", passenger[1])
            print("First Name:", passenger[2])
            print("Last Name:", passenger[3])
            print("Location:", passenger[6])

        else:
            print("Passenger not found with ID:", passenger_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print top 4 passengers who take the most trips
def print_top_passenger_trips():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT RiderID, COUNT(*) AS TripCount FROM Trip GROUP BY RiderID ORDER BY TripCount DESC LIMIT 4"
        cursor.execute(query)
        top_passengers = cursor.fetchall()

        for passenger in top_passengers:
            print("Passenger ID:", passenger[0])
            print("Number of Trips:", passenger[1])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print count of passengers per location
def print_passengers_count_by_location(location):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = "SELECT COUNT(*) FROM Passenger WHERE Area = %s"
        cursor.execute(query, (location,))
        count = cursor.fetchone()[0]

        print("Number of Passengers in", location, ":", count)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to add a new driver
def add_driver():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get the last driver ID in the table
        query_last_id = "SELECT MAX(DriverID) FROM Driver"
        cursor.execute(query_last_id)
        last_id = cursor.fetchone()[0]

        # Increment the driver ID for the new driver
        new_driver_id = last_id + 1

        # Get driver details from the user
        first_name = input("Enter First Name: ")
        last_name = input("Enter Last Name: ")
        rating = float(input("Enter Rating: "))
        location = input("Enter Location: ")
        password = input("Enter Password: ")
        license_number = input("Enter License Number: ")

        # Insert the new driver into the database
        query_insert = "INSERT INTO Driver (DriverID, FirstName, LastName, Rating, Location, Password, LicenseNumber) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        data = (new_driver_id, first_name, last_name,
                rating, location, password, license_number)
        cursor.execute(query_insert, data)
        connection.commit()

        print()
        print("Driver added successfully with ID:", new_driver_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to update details of a driver
def update_driver():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get driver ID from the user
        driver_id = int(input("Enter Driver ID to update details: "))

        # Check if the driver exists
        query_check_driver = "SELECT * FROM Driver WHERE DriverID = %s"
        cursor.execute(query_check_driver, (driver_id,))
        driver = cursor.fetchone()

        if driver:
            print("Current Details:")
            print("Driver ID:", driver[1])
            print("First Name:", driver[2])
            print("Last Name:", driver[3])
            print("Rating:", driver[4])
            print("Location:", driver[5])
            print("Password:", driver[6])
            print("License Number:", driver[7])
            print("-----------------------")

            # Get the field to update and the new value
            field_to_update = input(
                "Enter the field to update (FirstName/LastName/Rating/Location/Password/LicenseNumber): ")
            new_value = input("Enter the new value: ")

            # Update the driver details in the database
            query_update = f"UPDATE Driver SET {field_to_update} = %s WHERE DriverID = %s"
            data = (new_value, driver_id)
            cursor.execute(query_update, data)
            connection.commit()

            print("Driver details updated successfully.")

        else:
            print("Driver not found with ID:", driver_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to remove a driver
def remove_driver():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get driver ID from the user
        driver_id = int(input("Enter Driver ID to remove: "))

        # Check if the driver exists
        query_check_driver = "SELECT * FROM Driver WHERE DriverID = %s"
        cursor.execute(query_check_driver, (driver_id,))
        driver = cursor.fetchone()

        if driver:
            # Delete the driver from the database
            query_delete = "DELETE FROM Driver WHERE DriverID = %s"
            cursor.execute(query_delete, (driver_id,))
            connection.commit()

            print("Driver removed successfully.")

        else:
            print("Driver not found with ID:", driver_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to add a new passenger
def add_passenger():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get the last passenger ID in the table
        query_last_id = "SELECT MAX(RiderID) FROM Passenger"
        cursor.execute(query_last_id)
        last_id = cursor.fetchone()[0]

        # Increment the passenger ID for the new passenger
        new_passenger_id = last_id + 1

        # Get passenger details from the user
        first_name = input("Enter First Name: ")
        last_name = input("Enter Last Name: ")
        home_number = int(input("Enter Home Number: "))
        street_number = int(input("Enter Street Number: "))
        area = input("Enter Area: ")
        state = input("Enter State: ")
        pincode = int(input("Enter Pincode: "))
        admin_id = random.randint(2, 99)

        # Insert the new passenger into the database
        query_insert = "INSERT INTO Passenger (AdminID, RiderID, FirstName, LastName, HomeNumber, StreetNumber, Area, State, Pincode) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
        data = (admin_id, new_passenger_id, first_name, last_name, home_number,
                street_number, area, state, pincode)
        cursor.execute(query_insert, data)
        connection.commit()

        print("Passenger added successfully with ID:", new_passenger_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to update details of a passenger
def update_passenger():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get passenger ID from the user
        passenger_id = int(input("Enter Passenger ID to update details: "))
        print()
        print("-----------------------")

        # Check if the passenger exists
        query_check_passenger = "SELECT * FROM Passenger WHERE RiderID = %s"
        cursor.execute(query_check_passenger, (passenger_id,))
        passenger = cursor.fetchone()

        if passenger:
            print("Current Details:")
            print("Passenger ID:", passenger[1])
            print("First Name:", passenger[2])
            print("Last Name:", passenger[3])
            print("Home Number:", passenger[4])
            print("Street Number:", passenger[5])
            print("Area:", passenger[6])
            print("State:", passenger[7])
            print("Pincode:", passenger[8])
            print("-----------------------")
            print()

            # Get the field to update and the new value
            field_to_update = input(
                "Enter the field to update (FirstName/LastName/HomeNumber/StreetNumber/Area/State/Pincode): ")
            new_value = input("Enter the new value: ")

            # Update the passenger details in the database
            query_update = f"UPDATE Passenger SET {field_to_update} = %s WHERE RiderID = %s"
            data = (new_value, passenger_id)
            cursor.execute(query_update, data)
            connection.commit()

            print("Passenger details updated successfully.")

        else:
            print("Passenger not found with ID:", passenger_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to remove a passenger
def remove_passenger():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get passenger ID from the user
        passenger_id = int(input("Enter Passenger ID to remove: "))

        # Check if the passenger exists
        query_check_passenger = "SELECT * FROM Passenger WHERE RiderID = %s"
        cursor.execute(query_check_passenger, (passenger_id,))
        passenger = cursor.fetchone()

        if passenger:
            # Delete the passenger from the database
            query_delete = "DELETE FROM Passenger WHERE RiderID = %s"
            cursor.execute(query_delete, (passenger_id,))
            connection.commit()

            print("Passenger removed successfully.")

        else:
            print("Passenger not found with ID:", passenger_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print all trips
def print_all_trips_sorted_by_date():
    connection = connect_to_database()

    if connection:
        try:
            cursor = connection.cursor(dictionary=True)

            # Query to fetch all trips with details
            query = """
            SELECT T.TripID, D.FirstName AS DriverName, P.FirstName AS RiderName,
                   TR.StartLocation, TR.DropLocation, T.Fare, T.TripRating, TR.Date, TR.Time
            FROM TripRequest TR
            JOIN Trip T ON TR.DriverID = T.DriverID AND TR.RiderID = T.RiderID
            JOIN Driver D ON TR.DriverID = D.DriverID
            JOIN Passenger P ON TR.RiderID = P.RiderID
            """

            cursor.execute(query)
            trips = cursor.fetchall()

            # Print trips
            print("--------------------------------------")
            for trip in trips:
                print(f"TripID: {trip['TripID']}")
                print(f"Driver: {trip['DriverName']}")
                print(f"Rider: {trip['RiderName']}")
                print(f"Start Location: {trip['StartLocation']}")
                print(f"Drop Location: {trip['DropLocation']}")
                print(f"Fare: {trip['Fare']}")
                print(f"Rating: {trip['TripRating']}")
                print(f"Date: {trip['Date']}")
                print(f"Time: {trip['Time']}")
                print("--------------------------------------")

            # Ask user if they want to sort by date
            sort_by_date = input(
                "Do you want to see trips sorted by date? (yes/no): ").lower()
            if sort_by_date == 'yes':
                # Sort trips by date and print again
                trips_sorted_by_date = sorted(
                    trips, key=lambda x: x['Date'], reverse=True)
                print("\nTrips sorted by date:")
                print("--------------------------------------")
                for trip in trips_sorted_by_date:

                    print(f"TripID: {trip['TripID']}")
                    print(f"Driver: {trip['DriverName']}")
                    print(f"Rider: {trip['RiderName']}")
                    print(f"Start Location: {trip['StartLocation']}")
                    print(f"Drop Location: {trip['DropLocation']}")
                    print(f"Fare: {trip['Fare']}")
                    print(f"Rating: {trip['TripRating']}")
                    print(f"Date: {trip['Date']}")
                    print(f"Time: {trip['Time']}")
                    print("--------------------------------------")

        except Exception as e:
            print("Error:", e)

        finally:
            cursor.close()
            connection.close()

# function to print a specific trip
def print_specific_trip(trip_id):
    connection = connect_to_database()

    if connection:
        try:
            cursor = connection.cursor(dictionary=True)

            # Query to fetch details of a specific trip by TripID
            query = """
            SELECT T.TripID, D.FirstName AS DriverName, P.FirstName AS RiderName,
                   TR.StartLocation, TR.DropLocation, T.Fare, T.TripRating, TR.Date, TR.Time
            FROM TripRequest TR
            JOIN Trip T ON TR.DriverID = T.DriverID AND TR.RiderID = T.RiderID
            JOIN Driver D ON TR.DriverID = D.DriverID
            JOIN Passenger P ON TR.RiderID = P.RiderID
            WHERE T.TripID = %s
            """

            cursor.execute(query, (trip_id,))
            trip = cursor.fetchone()

            # Print specific trip details
            if trip:
                print("--------------------------------------")
                print(f"TripID: {trip['TripID']}")
                print(f"Driver: {trip['DriverName']}")
                print(f"Rider: {trip['RiderName']}")
                print(f"Start Location: {trip['StartLocation']}")
                print(f"Drop Location: {trip['DropLocation']}")
                print(f"Fare: {trip['Fare']}")
                print(f"Rating: {trip['TripRating']}")
                print(f"Date: {trip['Date']}")
                print(f"Time: {trip['Time']}")
                print("--------------------------------------")
            else:
                print(f"Trip with ID {trip_id} not found.")

        except Exception as e:
            print("Error:", e)

        finally:
            cursor.close()
            connection.close()

# Function to update fare of a trip
def update_trip_fare(trip_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get the current fare of the trip
        query_get_fare = "SELECT Fare FROM Trip WHERE TripID = %s"
        cursor.execute(query_get_fare, (trip_id,))
        current_fare = cursor.fetchone()[0]

        # Get the new fare from the user
        new_fare = float(input(
            f"Enter the new fare for Trip ID {trip_id} (current fare: {current_fare}): "))

        # Update the fare in the database
        query_update_fare = "UPDATE Trip SET Fare = %s WHERE TripID = %s"
        data = (new_fare, trip_id)
        cursor.execute(query_update_fare, data)
        connection.commit()

        print("Fare updated successfully for Trip ID:", trip_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to remove a trip
def remove_trip(trip_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Check if the trip exists
        query_check_trip = "SELECT * FROM Trip WHERE TripID = %s"
        cursor.execute(query_check_trip, (trip_id,))
        trip = cursor.fetchone()

        if trip:
            # Delete the trip from the database
            query_delete_trip = "DELETE FROM Trip WHERE TripID = %s"
            cursor.execute(query_delete_trip, (trip_id,))
            connection.commit()

            print("Trip removed successfully.")

        else:
            print("Trip not found with ID:", trip_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print all payments
def print_all_payments():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Payment.TransactionID,
                Passenger.FirstName AS RiderName,
                Payment.Amount,
                Payment.PaymentDate
            FROM Payment
            JOIN Passenger ON Payment.RiderID = Passenger.RiderID
        """
        cursor.execute(query)
        payments = cursor.fetchall()

        print("All Payments:")
        for payment in payments:
            print("Transaction ID:", payment[0])
            print("Rider Name:", payment[1])
            print("Amount:", payment[2])
            print("Date:", payment[3])
            print("-----------------------")

        # Ask the user if they want to see the payments sorted by date
        sort_by_date = input(
            "Do you want to see the payments sorted by date? (yes/no): ").lower()
        if sort_by_date == "yes":
            query_sorted_by_date = query + " ORDER BY Payment.PaymentDate DESC"
            cursor.execute(query_sorted_by_date)
            sorted_payments = cursor.fetchall()

            print("\nPayments Sorted by Date:")
            for sorted_payment in sorted_payments:
                print("Transaction ID:", sorted_payment[0])
                print("Rider Name:", sorted_payment[1])
                print("Amount:", sorted_payment[2])
                print("Date:", sorted_payment[3])
                print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print details of a specific payment by its transaction ID
def print_payment_by_id(transaction_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Payment.TransactionID,
                Passenger.FirstName AS RiderName,
                Payment.Amount,
                Payment.PaymentDate
            FROM Payment
            JOIN Passenger ON Payment.RiderID = Passenger.RiderID
            WHERE Payment.TransactionID = %s
        """
        cursor.execute(query, (transaction_id,))
        payment = cursor.fetchone()

        if payment:
            print("Transaction ID:", payment[0])
            print("Rider Name:", payment[1])
            print("Amount:", payment[2])
            print("Date:", payment[3])
            print("-----------------------")
        else:
            print("Payment not found with Transaction ID:", transaction_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to remove a payment
def remove_payment(transaction_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Check if the payment exists
        query_check_payment = "SELECT * FROM Payment WHERE TransactionID = %s"
        cursor.execute(query_check_payment, (transaction_id,))
        payment = cursor.fetchone()

        if payment:
            # Delete the payment from the database
            query_delete_payment = "DELETE FROM Payment WHERE TransactionID = %s"
            cursor.execute(query_delete_payment, (transaction_id,))
            connection.commit()

            print("Payment removed successfully.")

        else:
            print("Payment not found with Transaction ID:", transaction_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print all account details
def print_all_account_details():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Passenger.FirstName,
                Account.AccountNumber,
                Account.Balance
            FROM Account
            JOIN Passenger ON Account.RiderID = Passenger.RiderID
        """
        cursor.execute(query)
        accounts = cursor.fetchall()

        print("All Account Details:")
        for account in accounts:
            print("Passenger Name:", account[0])
            print("Account Number:", account[1])
            print("Balance:", account[2])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print all normal account details
def print_all_normal_account_details():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Passenger.FirstName,
                NormalAccount.AccountNumber,
                NormalAccount.DailyWithdrawl,
                NormalAccount.Discount
            FROM NormalAccount
            JOIN Account ON NormalAccount.AccountNumber = Account.AccountNumber
            JOIN Passenger ON Account.RiderID = Passenger.RiderID
        """
        cursor.execute(query)
        normal_accounts = cursor.fetchall()

        print("All Normal Account Details:")
        for normal_account in normal_accounts:
            print("Passenger Name:", normal_account[0])
            print("Account Number:", normal_account[1])
            print("Daily Withdrawal Limit:", normal_account[2])
            print("Discount:", normal_account[3])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print all premium account details
def print_all_premium_account_details():
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Passenger.FirstName,
                PremiumAccount.AccountNumber,
                PremiumAccount.DailyWithdrawl,
                PremiumAccount.Discount
            FROM PremiumAccount
            JOIN Account ON PremiumAccount.AccountNumber = Account.AccountNumber
            JOIN Passenger ON Account.RiderID = Passenger.RiderID
        """
        cursor.execute(query)
        premium_accounts = cursor.fetchall()

        print("All Premium Account Details:")
        for premium_account in premium_accounts:
            print("Passenger Name:", premium_account[0])
            print("Account Number:", premium_account[1])
            print("Daily Withdrawal Limit:", premium_account[2])
            print("Discount:", premium_account[3])
            print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to print account details of a specific passenger
def print_account_details_by_passenger_id(passenger_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        query = """
            SELECT 
                Passenger.FirstName,
                Account.AccountNumber,
                Account.Balance,
                NormalAccount.AccountNumber AS NormalAccountNumber,
                PremiumAccount.AccountNumber AS PremiumAccountNumber
            FROM Account
            JOIN Passenger ON Account.RiderID = Passenger.RiderID
            LEFT JOIN NormalAccount ON Account.AccountNumber = NormalAccount.AccountNumber
            LEFT JOIN PremiumAccount ON Account.AccountNumber = PremiumAccount.AccountNumber
            WHERE Passenger.RiderID = %s
        """
        cursor.execute(query, (passenger_id,))
        account_details = cursor.fetchone()

        if account_details:
            print("-----------------------")
            print("Passenger Name:", account_details[0])
            print("Account Number:", account_details[1])
            print("Balance:", account_details[2])
            if account_details[3]:
                print("It is a Normal Account")
            if account_details[4]:
                print("It is a Premium Account")
            print("-----------------------")
        else:
            print("Account details not found for Passenger ID:", passenger_id)

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to book a ride by a passenger
def book_ride(passenger_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get necessary details from the user
        date_input = datetime.now().strftime('%Y-%m-%d')
        time_input = datetime.now().strftime('%H:%M:%S')
        start_location_input = input("Enter start location: ")
        drop_location_input = input("Enter drop location: ")
        car_type_input = input("Enter car type (Sedan/Mini/Auto/Prime): ")

        # Generate random DriverID, Fare, and TripRating
        driver_id = random.randint(2, 99)
        fare = round(random.uniform(10.0, 100.0), 2)
        trip_rating = round(random.uniform(5.0, 9.0), 1)

        # Get the last request ID in the table
        query_last_id = "SELECT MAX(RequestID) FROM TripRequest"
        cursor.execute(query_last_id)
        last_id = cursor.fetchone()[0]

        # Increment the request ID for the new request
        request_id = last_id + 1

        # Insert entry into TripRequest table
        query_insert_request = """
            INSERT INTO TripRequest (DriverID, RiderID, RequestID, Date, Time, StartLocation, DropLocation, CarType)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """

        cursor.execute(query_insert_request, (driver_id, passenger_id, request_id, date_input,
                       time_input, start_location_input, drop_location_input, car_type_input))

        connection.commit()

        # Insert entry into Trip table
        query_insert_trip = """
            INSERT INTO Trip (DriverID, RiderID, TripID, Fare, TripRating)
            VALUES (%s, %s, %s, %s, %s)
        """

        cursor.execute(query_insert_trip, (driver_id,
                       passenger_id, request_id, fare, trip_rating))
        connection.commit()
        print("6")

        # Get driver name
        query_get_driver_name = "SELECT FirstName, LastName FROM Driver WHERE DriverID = %s"
        cursor.execute(query_get_driver_name, (driver_id,))
        result = cursor.fetchone()

        # Display confirmation message
        print("Ride booked successfully!")
        print("Details:")
        print(f"Driver: {result[0]} {result[1]}")
        print(f"Fare: {fare}")
        print(f"Start Location: {start_location_input}")
        print(f"Drop Location: {drop_location_input}")
        print(f"Car: {car_type_input}")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to view all trips taken by a rider
def view_rider_trips(rider_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get all trips for the given rider
        query = """
            SELECT 
                Trip.TripID,
                Passenger.FirstName AS RiderName,
                Driver.FirstName AS DriverName,
                TripRequest.StartLocation,
                TripRequest.DropLocation,
                Trip.Fare,
                Trip.TripRating,
                TripRequest.Date,
                TripRequest.Time
            FROM Trip
            JOIN Passenger ON Trip.RiderID = Passenger.RiderID
            LEFT JOIN TripRequest ON Trip.RiderID = TripRequest.RiderID
            LEFT JOIN Driver ON Trip.DriverID = Driver.DriverID
            WHERE Passenger.RiderID = %s
        """
        cursor.execute(query, (rider_id,))
        trips = cursor.fetchall()

        if not trips:
            print("No trips found for Rider ID:", rider_id)
            return

        print("All Trips Taken by Rider:")
        for trip in trips:
            print("Trip ID:", trip[0])
            print("Rider Name:", trip[1])
            print("Driver Name:", trip[2])
            print("Start Location:", trip[3])
            print("Drop Location:", trip[4])
            print("Fare:", trip[5])
            print("Rating:", trip[6])
            print("Date:", trip[7])
            print("Time:", trip[8])
            print("-----------------------")

        # Ask the user if they want to see the trips sorted by date
        sort_by_date = input(
            "Do you want to see the trips sorted by date? (yes/no): ").lower()
        if sort_by_date == "yes":
            query_sorted_by_date = query + \
                " ORDER BY TripRequest.Date DESC, TripRequest.Time DESC"
            cursor.execute(query_sorted_by_date, (rider_id,))
            sorted_trips = cursor.fetchall()

            print("\nTrips Sorted by Date:")
            for sorted_trip in sorted_trips:
                print("Trip ID:", sorted_trip[0])
                print("Rider Name:", sorted_trip[1])
                print("Driver Name:", sorted_trip[2])
                print("Start Location:", sorted_trip[3])
                print("Drop Location:", sorted_trip[4])
                print("Fare:", sorted_trip[5])
                print("Rating:", sorted_trip[6])
                print("Date:", sorted_trip[7])
                print("Time:", sorted_trip[8])
                print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# Function to view all trips taken by a driver
def view_driver_trips(driver_id):
    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        # Get all trips for the given driver
        query = """
            SELECT 
                Trip.TripID,
                Passenger.FirstName AS RiderName,
                Driver.FirstName AS DriverName,
                TripRequest.StartLocation,
                TripRequest.DropLocation,
                Trip.Fare,
                Trip.TripRating,
                TripRequest.Date,
                TripRequest.Time
            FROM Trip
            LEFT JOIN TripRequest ON Trip.DriverID = TripRequest.DriverID
            LEFT JOIN Passenger ON Trip.RiderID = Passenger.RiderID
            LEFT JOIN Driver ON Trip.DriverID = Driver.DriverID
            WHERE Trip.DriverID = %s
        """
        cursor.execute(query, (driver_id,))
        trips = cursor.fetchall()

        if not trips:
            print("No trips found for Driver ID:", driver_id)
            return

        print("All Trips Taken by Driver:")
        for trip in trips:
            print("Trip ID:", trip[0])
            print("Rider Name:", trip[1])
            print("Driver Name:", trip[2])
            print("Start Location:", trip[3])
            print("Drop Location:", trip[4])
            print("Fare:", trip[5])
            print("Rating:", trip[6])
            print("Date:", trip[7])
            print("Time:", trip[8])
            print("-----------------------")

        # Ask the user if they want to see the trips sorted by date
        sort_by_date = input(
            "Do you want to see the trips sorted by date? (yes/no): ").lower()
        if sort_by_date == "yes":
            query_sorted_by_date = query + \
                " ORDER BY TripRequest.Date DESC, TripRequest.Time DESC"
            cursor.execute(query_sorted_by_date, (driver_id,))
            sorted_trips = cursor.fetchall()

            print("\nTrips Sorted by Date:")
            for sorted_trip in sorted_trips:
                print("Trip ID:", sorted_trip[0])
                print("Rider Name:", sorted_trip[1])
                print("Driver Name:", sorted_trip[2])
                print("Start Location:", sorted_trip[3])
                print("Drop Location:", sorted_trip[4])
                print("Fare:", sorted_trip[5])
                print("Rating:", sorted_trip[6])
                print("Date:", sorted_trip[7])
                print("Time:", sorted_trip[8])
                print("-----------------------")

    except Exception as e:
        print("Error:", e)

    finally:
        cursor.close()
        connection.close()

# ----------------------------------------------------------
# Main program starts from here

# password
admin = ["password", "password", "password"]
driver = ["password", "password", "password"]
passenger = ["password", "password", "password"]

# permisions
start = False
adminPermission = False
driverPermission = False
passengerPermission = False

print()
print("Welcome to InstaCAB")
print()
print("Please Select the user!")
print("1. Admin")
print("2. Driver")
print("3. Passenger")
print("4. Quit")
print()

choice = int(input("Choose your option: "))
print()

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
    if password == passenger[riderid-1]:
        start = True
        passengerPermission = True

    else:
        print("Incorrect Credentials")
        start = False

else:
    start = False

# ---------------------------------------------------------
# Menu-driven program for admin
    
while start and adminPermission:
    print()
    print("Please choose an option:")
    print("1. DashBoard")
    print("2. Manage Users")
    print("3. Manage Trips")
    print("4. Manage Payments")
    print("5. Manage Accounts")
    print("0. Sign Out")
    print()
    admin_choice = int(input("Enter your choice: "))

    if admin_choice == 1:
        while (1):
            print()
            print("DashBoard")
            print("1. Driver")
            print("2. Passenger")
            print("0. Back")
            print()
            dashboard_choice = int(input("Enter your choice: "))

            if dashboard_choice == 1:
                while (1):
                    print()
                    print("DashBoard of Driver")
                    print("1. Details of all Driver")
                    print("2. Details of specific Driver")
                    print("3. Top 4 drivers")
                    print("4. Drivers per location")
                    print("0. Back")
                    print()
                    driver_dashboard_choice = int(input("Enter your choice: "))

                    if driver_dashboard_choice == 1:
                        print()
                        print("------------------------")
                        print_all_drivers()
                        
                    elif driver_dashboard_choice == 2:
                        print()
                        driver_id = int(input("Enter the Driver ID: "))
                        print()
                        print("------------------------")
                        print_driver_by_id(driver_id)
                        print("------------------------")
                        
                    elif driver_dashboard_choice == 3:
                        print()
                        print("-----------------------")
                        print_top_rated_drivers()
                        
                    elif driver_dashboard_choice == 4:
                        location = input("Enter location to get drivers: ")
                        print()
                        print("-----------------------")
                        print_drivers_by_location(location)
                        
                    elif driver_dashboard_choice == 0:
                        break
                    else:
                        print("Wrong input")

            elif dashboard_choice == 2:
                while (1):
                    print()
                    print("DashBoard of Passenger")
                    print("1. Details of all Passenger")
                    print("2. Details of specific Passenger")
                    print("3. Top 4 Passenger")
                    print("4. Passenger per location")
                    print("0. Back")
                    print()
                    passenger_dashboard_choice = int(input("Enter your choice: "))

                    if passenger_dashboard_choice == 1:
                        print()
                        print("------------------------")
                        print_all_passengers()
                    elif passenger_dashboard_choice == 2:
                        print()
                        passenger_id = int(input("Enter the Passenger ID: "))
                        print()
                        print("------------------------")
                        print_passenger_by_id(passenger_id)
                        print("------------------------")
                    elif passenger_dashboard_choice == 3:
                        print()
                        print("------------------------")
                        print_top_passenger_trips()
                    elif passenger_dashboard_choice == 4:
                        print()
                        location = input("Enter location to get passengers: ")
                        print()
                        print_passengers_count_by_location(location)
                    elif passenger_dashboard_choice == 0:
                        break
                    else:
                        print("Wrong input")

            elif dashboard_choice == 0:
                break
            else:
                print("Invalid choice")

    elif admin_choice == 2:
        while (1):
            print()
            print("Manage Users")
            print("1. Manage Driver")
            print("2. Manage Passenger")
            print("0. Back")
            print()
            manage_user_choice = int(input("Enter your choice: "))

            if manage_user_choice == 1:
                while (1):
                    print()
                    print("Manage Driver")
                    print("1. Add a driver")
                    print("2. Update a driver details")
                    print("3. Remove a driver")
                    print("0. Back")
                    print()
                    manage_driver_choice = int(input("Enter your choice: "))

                    if manage_driver_choice == 1:
                        print()
                        add_driver()
                    elif manage_driver_choice == 2:
                        print()
                        update_driver()
                    elif manage_driver_choice == 3:
                        print()
                        remove_driver()
                    elif manage_driver_choice == 0:
                        break
                    else:
                        print("Wrong input")

            elif manage_user_choice == 2:
                while (1):
                    print()
                    print("Manage Passenger")
                    print("1. Add a Passenger")
                    print("2. Update a Passenger details")
                    print("3. Remove a Passenger")
                    print("0. Back")
                    print()
                    manage_passenger_choice = int(input("Enter your choice: "))

                    if manage_passenger_choice == 1:
                        print()
                        add_passenger()
                    elif manage_passenger_choice == 2:
                        print()
                        update_passenger()
                    elif manage_passenger_choice == 3:
                        print()
                        remove_passenger()
                    elif manage_passenger_choice == 0:
                        break
                    else:
                        print("Wrong input")

            elif manage_user_choice == 0:
                break
            else:
                print("Invalid choice")

    elif admin_choice == 3:
        while (1):
            print()
            print("Manage Trips")
            print("1. All Trips")
            print("2. Search Trips")
            print("3. Update fare of a Trip")
            print("4. Remove Trip")
            print("0. Back")
            print()
            manage_trip_choice = int(input("Enter your choice: "))

            if manage_trip_choice == 1:
                print()
                print_all_trips_sorted_by_date()
            elif manage_trip_choice == 2:
                print()
                trip_id = int(input("Enter Trip ID to get details: "))
                print()
                print_specific_trip(trip_id)
            elif manage_trip_choice == 3:
                print()
                trip_id = int(input("Enter Trip ID to update detail: "))
                print()
                update_trip_fare(trip_id)
            elif manage_trip_choice == 4:
                print()
                trip_id = int(input("Enter Trip ID to delete: "))
                print()
                remove_trip(trip_id)
            elif manage_trip_choice == 0:
                break
            else:
                print("Invalid choice")

    elif admin_choice == 4:
        while (1):
            print()
            print("Manage payments")
            print("1. View All payments")
            print("2. Search specific Payment")
            print("3. Remove a Payment")
            print("0. Back")
            print()
            manage_payment_choice = int(input("Enter your choice: "))

            if manage_payment_choice == 1:
                print()
                print_all_payments()
            elif manage_payment_choice == 2:
                print()
                transaction_id = int(input("Enter Transaction ID to get details: "))
                print_payment_by_id(transaction_id)
            elif manage_payment_choice == 3:
                transaction_id = int(input("Enter Transaction ID to get it deleted: "))
                remove_payment(transaction_id)
            elif manage_payment_choice == 0:
                break
            else:
                print("Invalid choice")

    elif admin_choice == 5:
        while (1):
            print()
            print("Manage Accounts")
            print("1. View all Account Details")
            print("2. View all Normal Account Details")
            print("3. View all Premium Account Details")
            print("4. View Account Detail of a Specific")
            print("0. Back")
            print()
            manage_account_choice = int(input("Enter your choice: "))

            if manage_account_choice == 1:
                print()
                print("-----------------------")
                print_all_account_details()
            elif manage_account_choice == 2:
                print()
                print("-----------------------")
                print_all_normal_account_details()
            elif manage_account_choice == 3:
                print()
                print("-----------------------")
                print_all_premium_account_details()
            elif manage_account_choice == 4:
                print()
                passenger_id = int(input("Enter the person ID to get account details: "))
                print()
                print_account_details_by_passenger_id(passenger_id)
            elif manage_account_choice == 0:
                break
            else:
                print("Invalid choice")

    elif admin_choice == 0:
        print()
        print("Signing out...")
        start = False
        adminPermission = False

    else:
        print("Invalid choice")

# --------------------------------------------------
# Menu driven program for passengers
while start and passengerPermission:
    print()
    print("Please choose an option:")
    print("1. Profile")
    print("2. Book a Trip")
    print("3. View all trips")
    print("4. My Account")
    print("0. Sign Out")
    print()
    passenger_choice = int(input("Enter your choice: "))

    if passenger_choice == 1:
        print()
        print_passenger_by_id(riderid)

    elif passenger_choice == 2:
        print()
        book_ride(riderid)
    elif passenger_choice == 3:
        print()
        view_rider_trips(riderid)
    elif passenger_choice == 4:
        print()
        print_account_details_by_passenger_id(riderid)
    elif passenger_choice == 0:
        print()
        print("Signing out...")
        start = False
        passengerPermission = False

    else:
        print("Invalid choice")

# --------------------------------------------------
#Menu driver program for drivers
        
while start and driverPermission:
    print()
    print("Please choose an option:")
    print("1. Profile")
    print("2. View all trips")
    print("3. My Account")
    print("0. Sign Out")
    print()
    passenger_choice = int(input("Enter your choice: "))

    if passenger_choice == 1:
        print()
        print("--------------------")
        print_driver_by_id(driverid)
        print("--------------------")

    elif passenger_choice == 2:
        print()
        print("--------------------")
        view_driver_trips(driverid)

    elif passenger_choice == 3:
        print()
        print_account_details_by_passenger_id(driverid)

    elif passenger_choice == 0:
        print()
        print("Signing out...")
        start = False
        driverPermission = False

    else:
        print("Invalid choice")


print("Thank you for using InstaCAB")
print()
