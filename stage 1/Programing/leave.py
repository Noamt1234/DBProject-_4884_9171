import random
from faker import Faker
import datetime
import csv

fake = Faker()

# List of leave types
leave_types = [
    'Sick Leave', 'Casual Leave', 'Maternity Leave', 'Paternity Leave', 'Annual Leave',
    'Compensatory Leave', 'Bereavement Leave', 'Marriage Leave', 'Study Leave', 'Unpaid Leave'
]

# Function to generate a list of 500 tuples for the Leave table
def generate_leave_tuples(num_tuples=500):
    leave_tuples = []

    for i in range(1, num_tuples + 1):
        leave_id = i
        employee_id = random.randint(1, 500)  # Assuming EmployeeID ranges from 1 to 100
        leave_type = random.choice(leave_types)
        return_date = fake.date_between(start_date=datetime.datetime(2001,9,11), end_date=datetime.datetime(2023,10,7))

        leave_tuples.append((leave_id, employee_id, leave_type, return_date))

    return leave_tuples

# Generate the leave tuples
leave_tuples = generate_leave_tuples()

# Save the tuples to a CSV file
file_path = 'C:\\Users\\repha\\Desktop\\Programing\\leave_data.csv'

with open(file_path, 'w', newline='') as csvfile:
    leave_writer = csv.writer(csvfile)
    # Write the header
    leave_writer.writerow(['LeaveID', 'EmployeeID', 'LeaveType', 'ReturnDate'])
    # Write the data
    leave_writer.writerows(leave_tuples)

print(f"Data saved to {file_path}")
