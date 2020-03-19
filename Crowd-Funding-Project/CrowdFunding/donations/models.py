from django.db import models
from users.models import Users
from projects.models import Projects


# Create your models here.


class Donations(models.Model):
    id = models.AutoField(primary_key=True)
    project = models.ForeignKey(Projects, on_delete=models.CASCADE)
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    donation_amount = models.IntegerField()
