from django.db import models
from django.utils import timezone

from Book.models import Book
from Cart.models import Cart, CartBook
from Customer.models import User


# Create your models here.
class Order(models.Model):
    order_ID = models.AutoField(primary_key=True)
    user = models.ForeignKey("Customer.User", on_delete=models.CASCADE)
    cart = models.ForeignKey("Cart.Cart", on_delete=models.CASCADE)
    order_date = models.DateTimeField()  # new attribute for when order was made
    total_price_order = models.FloatField()
    books = models.ManyToManyField("Book.Book")


class OrderBook(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    book = models.ForeignKey("Book.Book", on_delete=models.CASCADE)


class PlaceOrder(models.Model):
    user = models.ForeignKey("Customer.User", on_delete=models.CASCADE)
    cart = models.ForeignKey("Cart.Cart", on_delete=models.CASCADE)

    def execute(self):
        self.save()
        newOrder = Order(
            user=self.user,
            cart=self.cart,
            order_date=timezone.now(),
            total_price_order=self.cart.calculateTotalPrice()
        )
        newOrder.save()

        for cartbook in CartBook.objects.filter(cart=self.cart):
            book = Book.objects.get(book_ID=cartbook.book.book_ID)
            newOrderBook = OrderBook(order=newOrder, book=book)
            newOrderBook.save()

        return newOrder


class Test:  # for testing only
    @staticmethod
    def runtest():
        # from PlaceOrder.models import Book, User, Cart, CartBook, Order, PlaceOrder, Test
        # from django.utils import timezone
        user = User(
            username="gwen10",
            password="magic",
            first_name="Gwen",
            last_name="Tennyson",
            email_address="gwen10@email.com",
            phone_number="00000001001",
            date_of_birth=timezone.now(),
            gender=0,
            account_status=1
        )
        user.save()
        cart = Cart(user=user)
        cart.save()

        book2 = Book.objects.get(pk=2)
        book3 = Book.objects.get(pk=3)

        cartbook1 = CartBook(cart=cart, book=book2)
        cartbook2 = CartBook(cart=cart, book=book3)
        cartbook1.save()
        cartbook2.save()

        return PlaceOrder(user=user, cart=cart).execute()
