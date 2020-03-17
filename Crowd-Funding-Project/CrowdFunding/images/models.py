from django.db import models
from projects.models import Projects

# Create your models here.


class Images (models.Model):
    img = models.ImageField(upload_to="images/")
    project_img = models.ForeignKey(Projects, on_delete=models.CASCADE)