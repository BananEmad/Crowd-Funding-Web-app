from django.db.models import Count
from django.db.models.functions import Lower
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from categories.models import Categories
from images.models import Images
from projects.models import Projects


def index(request):
    # return HttpResponse("mohamed")
    top_rate = Projects.objects.order_by(Lower('rate').desc())[:5]
    latest_5_projects = Projects.objects.order_by(Lower('created').desc())[:5]
    projects_categories = Categories.objects.all()
    latest_5_projects_images = Images.objects.raw('SELECT * FROM images_images GROUP BY project_id')
    projects = {
        "toprate": top_rate,
        "latest5projects": latest_5_projects,
        "latest5projectsimages": latest_5_projects_images,
        "projectscategories": projects_categories,
    }
    return render(request, "Home/index.html", projects)


def project(request):
    # return HttpResponse("mohamed")
    return render(request, "Home/projects.html")


def project_category(request, id):
    # return HttpResponse("mohamed")
    print(id)
    projects_category = Projects.objects.raw("SELECT * FROM projects_projects WHERE category_id = " + str(id) + "")
    projects_images = Images.objects.raw(
        "SELECT * FROM images_images GROUP BY project_id WHERE project_id = " + str(id) + "")
    print(projects_category)
    projects = {
        "projects": projects_category,
        "projectsimages": projects_images
    }
    return render(request, "Home/project_categories.html", projects)
