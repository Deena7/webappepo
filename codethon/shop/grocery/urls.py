"""shop URL Configuration"""

from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

# Import views from grocery app
from grocery.views import (
    signup_view, login_view, home, products_list,
    admin_login, admin_dashboard, add_product,
    about, add_to_cart, cart_view, remove_from_cart,
    user_details, dummy_payment, payment_success,
    salesperson_login, salesperson_signup, salesperson_dashboard
)

urlpatterns = [
    path('admin/', admin.site.urls),

    # Home & info
    path('', home, name='homepage'),
    path('about/', about, name='about'),

    # User authentication
    path('signup/', signup_view, name='signup'),
    path('login/', login_view, name='login_view'),

    # Products
    path('products/', products_list, name='products'),

    # Cart
    path('add-to-cart/', add_to_cart, name='add_to_cart'),
    path('remove-from-cart/', remove_from_cart, name='remove_from_cart'),
    path('cart/', cart_view, name='cart_view'),

    # Payments
    path('dummy-payment/', dummy_payment, name='dummy_payment'),
    path('payment-success/', payment_success, name='payment_success'),

    # User dashboard
    path('user-details/', user_details, name='user_details'),

    # Admin
    path('admin-login/', admin_login, name='admin_login'),
    path('admin-dashboard/', admin_dashboard, name='admin_dashboard'),
    path('add-product/', add_product, name='add_product'),

    # Salesperson
    path('salesperson-signup/', salesperson_signup, name='salesperson_signup'),
    path('salesperson-login/', salesperson_login, name='salesperson_login'),
    path('salesperson-dashboard/', salesperson_dashboard, name='salesperson_dashboard'),

    # Include grocery app URLs if you have more in grocery/urls.py
    path('', include('grocery.urls')),
]

# Static & Media files
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

