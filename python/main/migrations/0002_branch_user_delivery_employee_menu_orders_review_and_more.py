# Generated by Django 5.1.3 on 2024-11-16 13:13

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Branch',
            fields=[
                ('branchid', models.AutoField(primary_key=True, serialize=False)),
                ('branchname', models.CharField(max_length=100)),
                ('branchlocation', models.CharField(max_length=100)),
                ('branchcontact', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'Branch',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('userid', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=50, unique=True)),
                ('name', models.CharField(max_length=100)),
                ('phonenumber', models.CharField(max_length=15)),
                ('email', models.CharField(max_length=100)),
                ('gender', models.CharField(max_length=10)),
                ('address', models.CharField(max_length=255)),
                ('password', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'User',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Delivery',
            fields=[
                ('deliveryid', models.AutoField(primary_key=True, serialize=False)),
                ('deliveryaddress', models.CharField(max_length=255)),
                ('deliverystatus', models.CharField(max_length=20)),
                ('deliverytime', models.TimeField()),
            ],
            options={
                'db_table': 'Delivery',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Employee',
            fields=[
                ('employeeid', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('designation', models.CharField(max_length=50)),
                ('hiredate', models.DateField()),
                ('salary', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
            options={
                'db_table': 'Employee',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('itemid', models.AutoField(primary_key=True, serialize=False)),
                ('category', models.CharField(max_length=50)),
                ('size', models.CharField(max_length=20)),
                ('price', models.DecimalField(decimal_places=2, max_digits=5)),
                ('availabilitystatus', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'Menu',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('orderid', models.AutoField(primary_key=True, serialize=False)),
                ('orderdate', models.DateField()),
                ('ordertime', models.TimeField()),
            ],
            options={
                'db_table': 'Orders',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('reviewid', models.AutoField(primary_key=True, serialize=False)),
                ('rating', models.IntegerField()),
                ('comment', models.TextField()),
            ],
            options={
                'db_table': 'Review',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Transaction',
            fields=[
                ('transactionid', models.AutoField(primary_key=True, serialize=False)),
                ('paymentmethod', models.CharField(max_length=20)),
                ('paidamount', models.DecimalField(decimal_places=2, max_digits=5)),
            ],
            options={
                'db_table': 'Transaction',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='Product',
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('username', models.OneToOneField(db_column='UserName', on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='main.user')),
                ('numberorders', models.IntegerField()),
            ],
            options={
                'db_table': 'Customer',
                'managed': False,
            },
        ),
    ]