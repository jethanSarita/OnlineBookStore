# Generated by Django 4.2.6 on 2023-10-12 06:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Customer', '0003_remove_user_accountstatus_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='username',
            field=models.CharField(max_length=50, unique=True),
        ),
    ]
