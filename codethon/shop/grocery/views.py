from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return render(request, 'home.html')

def about(request):
    return render(request, 'about.html')

def login_view(request):
    return render(request, 'login.html')

def signup_view(request):
    return render(request, 'signup.html')

def products_list(request):
    return render(request, 'products1.html')

def product_detail(request, id):
    return render(request, 'products1.html')

def cart_view(request):
    return render(request, 'cart.html')

def add_to_cart(request, id):
    return render(request, 'cart.html')

def remove_from_cart(request, id):
    return render(request, 'cart.html')

def my_orders(request):
    return render(request, 'my_orders.html')

def payment_success(request):
    return render(request, 'payment_success.html')

def dummy_payment(request):
    return render(request, 'dummy_payment.html')

def admin_login(request):
    return render(request, 'admin_login.html')

def admin_dashboard(request):
    return render(request, 'admin_dashboard.html')

def add_product(request):
    return render(request, 'add_product.html')

def salesperson_login(request):
    return render(request, 'salesperson_login.html')

def salesperson_signup(request):
    return render(request, 'salesperson_signup.html')

def salesperson_dashboard(request):
    return render(request, 'salesperson_dashboard.html')

def user_details(request):
    return render(request, 'user_details.html')

