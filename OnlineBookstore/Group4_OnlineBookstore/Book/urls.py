from django.urls import path
from . import views

app_name = 'Book'

urlpatterns = [
    path('', views.index, name='index'),
    path('trans.html', views.BookTransactions.as_view(), name='trans'),
    path('trans', views.BookTransactions.as_view(), name='trans'),
    path('reg.html', views.UserRegistration.as_view(), name='reg'),
    path('register', views.UserRegistration.as_view(), name='reg'),
    path('login.html', views.UserLogin.as_view(), name='login'),
    path('login', views.UserLogin.as_view(), name='login'),
    path('index.html', views.index, name='index'),
    path('index', views.index, name='index'),

]