# Generated by Django 4.2 on 2023-05-24 23:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_item_picture'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='picture',
            name='in_gallery',
        ),
    ]
