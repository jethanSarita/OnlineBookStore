# Generated by Django 4.2.5 on 2023-10-11 05:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Customer', '0002_user_accountstatus_user_dateofbirth_user_gender_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='accountStatus',
        ),
        migrations.RemoveField(
            model_name='user',
            name='shippingAddress',
        ),
    ]