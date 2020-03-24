from django.shortcuts import render, redirect
from django.core.exceptions import ObjectDoesNotExist
from django.views.decorators.csrf import csrf_exempt
from users.models import Users
from django.contrib.auth.models import User
from projects.models import Projects
from django.core.files.storage import FileSystemStorage


# Create your views here.

def profile(request, user_id):
    try:
        user = Users.objects.raw(
            "SELECT * FROM users_users u INNER JOIN auth_user a WHERE u.user_id = a.id AND u.user_id= " + str(
                user_id) + " ")
        print(user[0].id)
        projects = Projects.objects.filter(user_id=user_id)
        print(projects)
        context = {
            "user": user[0],
            # "projects": projects
        }

        return render(request, "users/profile.html", context)
    except ObjectDoesNotExist as e:
        return redirect("/")


@csrf_exempt
def editUser(request):
    print(request)
    if request.POST["edit"] == "Edit":
        user_id = request.POST["id"]
        birthday = request.POST["birthday"]
        country = request.POST["country"]
        first_name = request.POST["first_name"]
        last_name = request.POST["last_name"]
        user_name = request.POST["user_name"]
        pass_confirmation = request.POST["password_confirmation"]
        password = request.POST["password"]
        image = request.FILES["image"]
        fs = FileSystemStorage()
        fs.save(image.name, image)
        email = request.POST["email"]
        phone = request.POST["phone"]
        if pass_confirmation == password:
            Users.objects.filter(id=user_id).update(user_birthday=birthday,
                                                    user_country=country,
                                                    user_phone=phone,
                                                    user_img=image.name
                                                    )
            User.objects.filter(id=user_id).update(first_name=first_name,
                                                   last_name=last_name,
                                                   username=user_name,
                                                   password=password,
                                                   email=email
                                                   )

            return redirect("/profile/" + user_id)
        else:
            return render(request, "users/404.html")


@csrf_exempt
def addInfo(request):
    if request.POST["add"] == "Add":
        user_id = request.POST["id"]
        birthday = request.POST["birthday"]
        country = request.POST["country"]
        facebook_profile = request.POST["facebook_profile"]
        print(user_id, birthday, country, facebook_profile)
        Users.objects.filter(id=user_id).update(user_birthday=birthday, user_country=country, user_fb=facebook_profile)
        return redirect("/profile/" + user_id)
    else:
        return render(request, "users/404.html")
