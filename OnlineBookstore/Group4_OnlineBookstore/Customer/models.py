from django.db import models
from datetime import date


# Create your models here.

class User(models.Model):
    user_ID = models.AutoField(primary_key=True)
    username = models.CharField(null=False, max_length=50, unique=True)
    password = models.CharField(null=False, max_length=50)
    firstName = models.CharField(null=False, max_length=50)
    lastName = models.CharField(null=False, max_length=50)
    emailAddress = models.EmailField(null=False, max_length=254)
    # shippingAddress = models.ForeignKey("Shipping.ShippingAddress", on_delete=models.CASCADE, default=None)
    dateOfBirth = models.DateField(default=None)
    genderChoices = [(0, "Female"), (1, "Male")]
    gender = models.IntegerField(choices=genderChoices, default=None)

    # accountStatus = models.BooleanField(default=True)

    def __str__(self):
        return self.username

    def full_name(self):
        return f"{self.first_name} {self.last_name}"

    def calculate_age(self):
        today = date.today()
        age = today.year - self.dateOfBirth.year - (
                (today.month, today.day) < (self.dateOfBirth.month, self.dateOfBirth.day))
        return age

    '''def get_account_status(self):
        if self.accountStatus:
            return "Active"
        else:
            return "Inactive"'''

    def change_password(self, new_password):
        self.password = new_password
        self.save()

    '''def update_shipping_address(self, new_shipping_address):
        self.shippingAddress = new_shipping_address
        self.save()'''


class UserReviews(models.Model):
    user_ID = models.ForeignKey("Customer.User", on_delete=models.CASCADE, default=None)
    book_ID = models.ForeignKey("Book.Book", on_delete=models.CASCADE, default=None)
    review = models.TextField()

    class StarRating(models.IntegerChoices):
        oneStar = 1
        twoStar = 2
        threeStar = 3
        fourStar = 4
        fiveStar = 5

    starRating = models.IntegerField(choices=StarRating.choices)
    