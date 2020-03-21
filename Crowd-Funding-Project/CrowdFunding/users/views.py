from django.shortcuts import render
from users.models import Users


# Create your views here.

def profile(request, user_id):
    return render(request, "users/profile.html")


def editUser(request, user_id):
    return render(request, "users/editUser.html")
