from django.shortcuts import render
# , redirect
# from django.contrib.auth.models import User
# from django.contrib.auth import login
# from django.contrib.auth import authenticate

# Create your views here.
from django.http import HttpResponse

def home(request):
    return HttpResponse("Welcome to the Home Page!")

def about(request):
    return HttpResponse("This is the About Page.")

# def signup(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         email = request.POST['email']
#         password = request.POST['password']

#         if User.objects.filter(username=username).exists():
#             return render(request, 'signup.html', {'error': 'Username already exists'})
#         if User.objects.filter(email=email).exists():
#             return render(request, 'signup.html', {'error': 'Email already registered'})

#         user = User.objects.create_user(username=username, email=email, password=password)
#         user.save()
#         login(request, user)
#         return redirect('index')  # Redirect to the home page

#     return render(request, 'signup.html')


# def login_view(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         password = request.POST['password']
#         user = authenticate(request, username=username, password=password)

#         if user is not None:
#             login(request, user)
#             return redirect('index')  # Redirect to the home page
#         else:
#             return render(request, 'login.html', {'error': 'Invalid credentials'})

#     return render(request, 'login.html')


# def index(request):
#     return render(request, 'index.html')

from .models import Menu

def index(request):
    menu_items = Menu.objects.all()
    return render(request, 'index.html', {'menu_items': menu_items})   

def signup(request):
    return render(request, 'signup.html')  # Renders the signup page

def login_view(request):
    return render(request, 'login.html')  # Renders the login page

def about_view(request):
    return render(request, 'about.html')  # Render about.html

def book_view(request):
    return render(request, 'book.html')   # Render book.html

def cart_view(request):
    return render(request, 'cart.html')   # Render cart.html

def menu_view(request):
    menu_items = Menu.objects.all()
    return render(request, 'menu.html', {'menu_items': menu_items})   # Render cart.html