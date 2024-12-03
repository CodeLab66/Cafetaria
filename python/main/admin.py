from django.contrib import admin
from .models import User, Customer, Branch, Employee, Menu, Orders, Transaction, Review, Delivery
from .models import Reservation

class UserAdmin(admin.ModelAdmin):
    list_display = ('UserID', 'UserName', 'Name', 'PhoneNumber', 'Email', 'Gender', 'Address')
    search_fields = ('UserName', 'Email', 'Name')


class CustomerAdmin(admin.ModelAdmin):
    list_display = ('UserID', 'NumberOrders')
    search_fields = ('UserID__UserName',)


class BranchAdmin(admin.ModelAdmin):
    list_display = ('BranchID', 'BranchName', 'BranchLocation', 'BranchContact')
    search_fields = ('BranchName', 'BranchLocation')


class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('EmployeeID', 'UserID', 'BranchID', 'Designation', 'HireDate', 'Salary')
    search_fields = ('EmployeeID', 'UserID__UserName', 'BranchID__BranchName', 'Designation')


class MenuAdmin(admin.ModelAdmin):
    list_display = ('ItemID', 'Name' ,'Category', 'Price', 'AvailabilityStatus')
    search_fields = ('Category',)


class OrdersAdmin(admin.ModelAdmin):
    list_display = ('OrderID', 'UserID', 'EmployeeID', 'BranchID', 'OrderDate', 'OrderTime')
    search_fields = ('UserID__UserName', 'EmployeeID', 'BranchID__BranchName', 'OrderDate')


class TransactionAdmin(admin.ModelAdmin):
    list_display = ('TransactionID', 'OrderID', 'PaymentMethod', 'PaidAmount')
    search_fields = ('OrderID__OrderID', 'PaymentMethod')


class ReviewAdmin(admin.ModelAdmin):
    list_display = ('ReviewID', 'UserID', 'OrderID', 'Rating', 'Comment')
    search_fields = ('UserID__UserName', 'OrderID__OrderID')


class DeliveryAdmin(admin.ModelAdmin):
    list_display = ('DeliveryID', 'OrderID', 'BranchID', 'DeliveryAddress', 'DeliveryStatus', 'DeliveryTime')
    search_fields = ('OrderID__OrderID', 'BranchID__BranchName')



@admin.register(Reservation)
class ReservationAdmin(admin.ModelAdmin):
    list_display = ('ReservationID', 'Name', 'PhoneNumber', 'Email', 'NumberOfPeople', 'ReservationDate')
    search_fields = ('Name', 'PhoneNumber', 'Email')
    list_filter = ('ReservationDate',)


admin.site.register(User, UserAdmin)
admin.site.register(Customer, CustomerAdmin)
admin.site.register(Branch, BranchAdmin)
admin.site.register(Employee, EmployeeAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Orders, OrdersAdmin)
admin.site.register(Transaction, TransactionAdmin)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Delivery, DeliveryAdmin)
