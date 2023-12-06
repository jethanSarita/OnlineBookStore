from django.db import models


class ShippingAddress(models.Model):
    ShippingAddress_ID = models.AutoField(primary_key="true")
    ShippingAddress = models.CharField(max_length=70, null="false")

    def add_shipping_address(self, name, street_address, city, province):
        shipping_address = ShippingAddress(name=name, street_address=street_address, city=city, province=province)
        shipping_address.save()
        return shipping_address

    def __str__(self):
        return self.ShippingAddress


class Shipping(models.Model):
    Shipping_ID = models.AutoField(primary_key="true")
    Subtotal = models.DecimalField(max_digits=6, decimal_places=2)
    Order = models.ForeignKey("Order.Order", on_delete=models.CASCADE, default=None)
    ShippingAddress = models.ForeignKey(ShippingAddress, on_delete=models.CASCADE)
# Create your models here.
