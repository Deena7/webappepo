from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from grocery.views import (
    home, about, login_view, signup_view, products_list, product_detail,
    cart_view, add_to_cart, remove_from_cart, my_orders,
    payment_success, dummy_payment, admin_login, admin_dashboard,
    add_product, salesperson_login, salesperson_signup,
    salesperson_dashboard, user_details
)

urlpatterns = [
    path('admin/', admin.site.urls),

    path('', home, name='home'),
    path('about/', about, name='about'),

    # User auth
    path('signup/', signup_view, name='signup'),
    path('login/', login_view, name='login'),

    # Products
    path('products/', products_list, name='products'),
    path('products/<int:id>/', product_detail, name='product_detail'),

    # Cart
    path('cart/', cart_view, name='cart_view'),
    path('add-to-cart/<int:id>/', add_to_cart, name='add_to_cart'),
    path('remove-from-cart/<int:id>/', remove_from_cart, name='remove_from_cart'),

    # Orders & Payment
    path('my-orders/', my_orders, name='my_orders'),
    path('dummy-payment/', dummy_payment, name='dummy_payment'),
    path('payment-success/', payment_success, name='payment_success'),

    # Admin dashboard
    path('admin-login/', admin_login, name='admin_login'),
    path('admin-dashboard/', admin_dashboard, name='admin_dashboard'),
    path('add-product/', add_product, name='add_product'),

    # Salesperson dashboard
    path('salesperson-signup/', salesperson_signup, name='salesperson_signup'),
    path('salesperson-login/', salesperson_login, name='salesperson_login'),
    path('salesperson-dashboard/', salesperson_dashboard, name='salesperson_dashboard'),

    # User details
    path('user-details/', user_details, name='user_details'),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATICFILES_DIRS[0])
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

