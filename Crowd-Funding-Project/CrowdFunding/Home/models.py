from django.db import models

# Create your models here.

# ----- examples ----- #
'''
class Books(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    image = models.ImageField(upload_to='Images/')
    release_date = models.DateField()
    num_stars = models.IntegerField()
    email = models.EmailField()
    tagline = models.TextField()
    image = models.ImageField(upload_to='Images/')
    published = models.BooleanField(default=True)
    slug = models.SlugField(max_length=255, unique=True)
    created = models.DateTimeField(auto_now_add=True)
    MedalType = models.TextChoices('MedalType', 'GOLD SILVER BRONZE')
    auther = models.ForeignKey("Auther", on_delete=models.CASCADE)

    def __str__(self):
        return self.name
'''
# ------- examples -------- #
