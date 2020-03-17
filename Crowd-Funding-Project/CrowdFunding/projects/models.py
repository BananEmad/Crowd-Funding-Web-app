from django.db import models
from categories.models import Categories
from users.models import Users
# Create your models here.


class Projects (models.Model):

    project_id = models.AutoField(primary_key=True)
    project_title = models.CharField(max_length=100)
    project_details = models.TextField(default=' ')
    total_donation = models.IntegerField()
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    category = models.ForeignKey(Categories, on_delete=models.CASCADE)
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
