from django.contrib import admin
from .models import Shipping, ShippingAddress

# Register your models here.
admin.site.register(Shipping)
admin.site.register(ShippingAddress)
