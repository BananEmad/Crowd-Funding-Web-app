from django.db.models import Count
from django.db.models.functions import Lower
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from images.models import Images
from projects.models import Projects


def index(request):
    # return HttpResponse("mohamed")
    top_rate = Projects.objects.order_by(Lower('rate').desc())[:5]
    latest_5_projects = Projects.objects.order_by(Lower('created').desc())[:5]
    # latest_5_projects_images = Images.objects.raw('SELECT * FROM images_images GROUP BY project_id')
    projects = {
        "toprate": top_rate,
        "latest5projects": latest_5_projects,
        # "latest5projectsimages": latest_5_projects_images
    }
    return render(request, "Home/index.html", projects)


def project(request):
    # return HttpResponse("mohamed")
    return render(request, "Home/projects.html")
