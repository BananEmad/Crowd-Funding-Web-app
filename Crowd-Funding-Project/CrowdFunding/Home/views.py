from django.db.models.functions import Lower
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from projects.models import Projects


def index(request):
    # return HttpResponse("mohamed")
    data = Projects.objects.order_by(Lower('rate').desc())[:5]
    projects = {
        "toprate": data
    }
    return render(request, "Home/index.html", projects)


def project(request):
    # return HttpResponse("mohamed")
    return render(request, "Home/projects.html")
