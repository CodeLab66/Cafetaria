from django.urls import path
from . import views  # Import views from the 'main' app

urlpatterns = [
    path('', views.index, name='index'),  # Home page
    path('signup/', views.signup, name='signup'),  # Signup page
    path('login/', views.login_view, name='login'),  # Login page
    path('index/', views.index, name='index'),  # Index page
    path('about/', views.about_view, name='about'),  # Link to about.html
    path('book/', views.book_view, name='book'),      # Link to book.html
    path('cart/', views.cart_view, name='cart'),      # Link to cart.html
]