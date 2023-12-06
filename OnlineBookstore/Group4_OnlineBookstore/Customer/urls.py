from django.urls import path
from . import views

urlpatterns = [
    path('', views.customerApp, name='index'),
    path('customerRegister', views.customerRegister.as_view(), name='customerRegister'),
    path('customerLogin', views.customerLogin.as_view(), name='customerLogin'),
    path('customerHome', views.customerHome, name='customerHome')
]