# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-08-04 15:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rbac', '0002_auto_20190804_1152'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='password',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='密码'),
        ),
    ]
