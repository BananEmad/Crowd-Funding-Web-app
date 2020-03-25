from django.db import models
from django.core.validators import RegexValidator
from django.contrib.auth.models import User


# Create your models here.


class Users(models.Model):
    id = models.AutoField(primary_key=True)
    user_img = models.ImageField(upload_to="Images/user")
    phone_regex = RegexValidator(regex=r'^[+-]?[0-9]+$')
    user_phone = models.CharField(validators=[phone_regex], max_length=11, default='01')
    user_country = models.CharField(max_length=100)
    user_fb = models.URLField(default=None)
    user_birthday = models.DateField(default=None)
    user = models.OneToOneField(User, on_delete=models.CASCADE)
