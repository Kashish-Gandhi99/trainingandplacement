# Generated by Django 3.0 on 2020-02-21 17:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0002_auto_20200219_0958'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='parentphno',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='details',
            name='phno',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
    ]
