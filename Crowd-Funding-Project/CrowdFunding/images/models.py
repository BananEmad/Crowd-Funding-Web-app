from django.db import models
from projects.models import Projects

# Create your models here.


class Images (models.Model):
    img = models.ImageField(upload_to="images/")
    project_img = models.ForeignKey(Projects, on_delete=models.CASCADE)
    Image_title = models.CharField(max_length=500, default=' ')
    image_description = models.CharField(max_length=1000, default=' ')