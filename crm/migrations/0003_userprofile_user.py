# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-08-04 15:08
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('rbac', '0002_auto_20190804_1152'),
        ('crm', '0002_auto_20190804_0742'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='user',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='rbac.User'),
        ),
    ]
