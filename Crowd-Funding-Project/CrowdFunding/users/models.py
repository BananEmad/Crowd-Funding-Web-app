from django.db import models
from django.core.validators import RegexValidator

# Create your models here.


class Users (models.Model):
    user_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=100, default=' ')
    user_img = models.ImageField(upload_to="user_images/")
    email = models.EmailField(default=None)
    user_password = models.CharField(max_length=50)
    phone_regex = RegexValidator(regex=r'^[+-]?[0-9]+$')
    user_phone = models.CharField(validators=[phone_regex], max_length=11, default='01')