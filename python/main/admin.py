from django.contrib import admin
from .models import User, Customer, Branch, Employee, Menu, Orders, Transaction, Review, Delivery


class UserAdmin(admin.ModelAdmin):
    list_display = ('UserID', 'UserName', 'Name', 'PhoneNumber', 'Email', 'Gender', 'Address')
    search_fields = ('UserName', 'Email', 'Name')


class CustomerAdmin(admin.ModelAdmin):
    list_display = ('UserName', 'NumberOrders')
    search_fields = ('UserName',)


class BranchAdmin(admin.ModelAdmin):
    list_display = ('BranchID', 'BranchName', 'BranchLocation', 'BranchContact')
    search_fields = ('BranchName', 'BranchLocation')


class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('EmployeeID', 'UserName', 'BranchID', 'Designation', 'HireDate', 'Salary')
    search_fields = ('EmployeeID', 'UserName__UserName', 'BranchID__BranchName', 'Designation')


class MenuAdmin(admin.ModelAdmin):
    list_display = ('ItemID', 'Category', 'Size', 'Price', 'AvailabilityStatus')
    search_fields = ('Category', 'Size')


class OrdersAdmin(admin.ModelAdmin):
    list_display = ('OrderID', 'UserName', 'EmployeeID', 'BranchID', 'OrderDate', 'OrderTime')
    search_fields = ('UserName__UserName', 'EmployeeID', 'BranchID__BranchName', 'OrderDate')


class TransactionAdmin(admin.ModelAdmin):
    list_display = ('TransactionID', 'OrderID', 'PaymentMethod', 'PaidAmount')
    search_fields = ('OrderID__OrderID', 'PaymentMethod')


class ReviewAdmin(admin.ModelAdmin):
    list_display = ('ReviewID', 'UserName', 'OrderID', 'Rating', 'Comment')
    search_fields = ('UserName__UserName', 'OrderID__OrderID')


class DeliveryAdmin(admin.ModelAdmin):
    list_display = ('DeliveryID', 'OrderID', 'BranchID', 'DeliveryAddress', 'DeliveryStatus', 'DeliveryTime')
    search_fields = ('OrderID__OrderID', 'BranchID__BranchName')


admin.site.register(User, UserAdmin)
admin.site.register(Customer, CustomerAdmin)
admin.site.register(Branch, BranchAdmin)
admin.site.register(Employee, EmployeeAdmin)
admin.site.register(Menu, MenuAdmin)
admin.site.register(Orders, OrdersAdmin)
admin.site.register(Transaction, TransactionAdmin)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Delivery, DeliveryAdmin)