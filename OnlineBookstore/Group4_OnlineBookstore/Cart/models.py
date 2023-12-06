from django.db import models

# from Customer.models import User
from Book.models import Book
# from Group4_OnlineBookstore.Customer.models import User
# from Book.models import Book
# Group4_OnlineBookstore.Book.models import Book


# Create your models here.
class Cart(models.Model):
    cart_ID = models.AutoField(primary_key=True)
    customer = models.ForeignKey("Customer.User", on_delete=models.CASCADE, default=None)
    books = models.ManyToManyField("Book.Book")

    def calculateTotalPrice(self):
        total = 0.0
        for cart_book in CartBook.objects.filter(cart=self.cart_ID):
            book = Book.objects.get(book_ID=cart_book.book.book_ID)
            total += book.price

        return total


class CartBook(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    book = models.ForeignKey("Book.Book", on_delete=models.CASCADE, default=None)

    def add_book_to_cart(self):
        # Create a new CartBook instance and save it to add to the cart
        cart_book = CartBook(cart=self.cart, book=self.book)
        cart_book.save()
        return cart_book

    def __str__(self):
        return str(self.book)
