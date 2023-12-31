# Generated by Django 4.2.6 on 2023-10-26 05:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Book', '0002_alter_book_book_id'),
        ('Customer', '0004_alter_user_username'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserReviews',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('review', models.TextField()),
                ('starRating', models.IntegerField(choices=[(1, 'Onestar'), (2, 'Twostar'), (3, 'Threestar'), (4, 'Fourstar'), (5, 'Fivestar')])),
                ('book_ID', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='Book.book')),
                ('user_ID', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='Customer.user')),
            ],
        ),
    ]
