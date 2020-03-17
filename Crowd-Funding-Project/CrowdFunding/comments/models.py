from django.db import models
from users.models import Users
from projects.models import Projects
# Create your models here.


class Comments (models.Model):
    comment_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    project = models.ForeignKey(Projects, on_delete=models.CASCADE)
    comment_content = models.TextField(default=' ')
