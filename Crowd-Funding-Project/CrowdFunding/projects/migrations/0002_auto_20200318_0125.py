# Generated by Django 3.0.4 on 2020-03-17 23:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='project_title',
            field=models.CharField(max_length=100),
        ),
    ]
