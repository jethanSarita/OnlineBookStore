from django.db import models


# Create your models here.


class Book(models.Model):
    book_ID = models.AutoField(primary_key=True)
    title = models.CharField(null=False, max_length=100)
    author = models.CharField(null=False, max_length=50)
    publication_Date = models.DateField(null=False)
    publisher = models.CharField(null=False, max_length=50)
    language = models.CharField(null=False, max_length=50)
    page_Count = models.PositiveIntegerField(null=False)
    price = models.FloatField(null=False)
    cover_Type = models.CharField(null=False, max_length=50)
    inventory = []

    # user views details of the book
    def viewbookdetails(self):
        print("Book ID: " + str(self.book_ID))
        print("Book Title: " + str(self.title))
        print("Book Author: " + str(self.author))
        print("Date Published: " + str(self.publication_Date))
        print("Book Publisher: " + str(self.publisher))
        print("Language: " + str(self.language))
        print("Page Count: " + str(self.page_Count))
        print("Book Price: " + str(self.price))
        print("Cover Type: " + str(self.cover_Type))

    def __str__(self):
        return self.title
