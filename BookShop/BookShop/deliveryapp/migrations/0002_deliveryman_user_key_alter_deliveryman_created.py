# Generated by Django 4.1.7 on 2023-03-19 02:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='deliveryman',
            name='user_key',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='deliveryman',
            name='created',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]
