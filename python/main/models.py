from django.db import models

class User(models.Model):
    UserID = models.AutoField(primary_key=True)
    UserName = models.CharField(max_length=50, unique=True)
    Name = models.CharField(max_length=100)
    PhoneNumber = models.CharField(max_length=15)
    Email = models.CharField(max_length=100)
    Gender = models.CharField(max_length=10)
    Address = models.CharField(max_length=255)
    Password = models.CharField(max_length=50)

    def __str__(self):
        return f"{self.Name} ({self.UserName})"

    class Meta:
        db_table = 'User'


class Customer(models.Model):
    UserName = models.OneToOneField(User, on_delete=models.CASCADE, db_column='UserName', primary_key=True)
    NumberOrders = models.IntegerField()

    def __str__(self):
        return f"Customer: {self.UserName.UserName}"

    class Meta:
        db_table = 'Customer'


class Branch(models.Model):
    BranchID = models.AutoField(primary_key=True)
    BranchName = models.CharField(max_length=100)
    BranchLocation = models.CharField(max_length=100)
    BranchContact = models.CharField(max_length=15)

    def __str__(self):
        return self.BranchName

    class Meta:
        db_table = 'Branch'


class Employee(models.Model):
    EmployeeID = models.CharField(max_length=50, primary_key=True)
    UserName = models.ForeignKey(User, on_delete=models.CASCADE, db_column='UserName')
    BranchID = models.ForeignKey(Branch, on_delete=models.CASCADE, db_column='BranchID')
    Designation = models.CharField(max_length=50)
    HireDate = models.DateField()
    Salary = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"{self.EmployeeID} - {self.Designation}"

    class Meta:
        db_table = 'Employee'


class Menu(models.Model):
    ItemID = models.AutoField(primary_key=True)
    Category = models.CharField(max_length=50)
    Size = models.CharField(max_length=20)
    Price = models.DecimalField(max_digits=5, decimal_places=2)
    AvailabilityStatus = models.CharField(max_length=10)

    def __str__(self):
        return f"{self.Category} - {self.Size}"

    class Meta:
        db_table = 'Menu'


class Orders(models.Model):
    OrderID = models.AutoField(primary_key=True)
    UserName = models.ForeignKey(Customer, on_delete=models.CASCADE, db_column='UserName')
    EmployeeID = models.ForeignKey(Employee, on_delete=models.CASCADE, db_column='EmployeeID')
    BranchID = models.ForeignKey(Branch, on_delete=models.CASCADE, db_column='BranchID')
    OrderDate = models.DateField()
    OrderTime = models.TimeField()

    def __str__(self):
        return f"Order {self.OrderID} - {self.OrderDate}"

    class Meta:
        db_table = 'Orders'


class Transaction(models.Model):
    TransactionID = models.AutoField(primary_key=True)
    OrderID = models.ForeignKey(Orders, on_delete=models.CASCADE, db_column='OrderID')
    PaymentMethod = models.CharField(max_length=20)
    PaidAmount = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return f"Transaction {self.TransactionID}"

    class Meta:
        db_table = 'Transaction'


class Review(models.Model):
    ReviewID = models.AutoField(primary_key=True)
    UserName = models.ForeignKey(Customer, on_delete=models.CASCADE, db_column='UserName')
    OrderID = models.ForeignKey(Orders, on_delete=models.CASCADE, db_column='OrderID')
    Rating = models.IntegerField()
    Comment = models.TextField()

    def __str__(self):
        return f"Review {self.ReviewID} - Rating: {self.Rating}"

    class Meta:
        db_table = 'Review'


class Delivery(models.Model):
    DeliveryID = models.AutoField(primary_key=True)
    OrderID = models.ForeignKey(Orders, on_delete=models.CASCADE, db_column='OrderID')
    BranchID = models.ForeignKey(Branch, on_delete=models.CASCADE, db_column='BranchID')
    DeliveryAddress = models.CharField(max_length=255)
    DeliveryStatus = models.CharField(max_length=20)
    DeliveryTime = models.TimeField()

    def __str__(self):
        return f"Delivery {self.DeliveryID} - {self.DeliveryStatus}"

    class Meta:
        db_table = 'Delivery'
