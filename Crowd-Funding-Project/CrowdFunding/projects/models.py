from django.db import models
from django.utils import timezone
from categories.models import Categories
from tags.models import Tags
from users.models import Users
# Create your models here.


class Projects (models.Model):
    id = models.AutoField(primary_key=True)
    project_title = models.CharField(max_length=100)
    project_details = models.TextField(default=' ')
    project_hint = models.TextField(default=' ')
    project_Location = models.CharField(max_length=500)
    total_donation = models.IntegerField()
    donated = models.IntegerField(default=0)
    Percentage = models.IntegerField(default=0)
    rate = models.IntegerField(default=0)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    created = models.DateTimeField(default=timezone.now)
    category = models.ForeignKey(Categories, on_delete=models.CASCADE)
    tag = models.ForeignKey(Tags, on_delete=models.CASCADE)
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    main_img_name = models.TextField(default=' ')

