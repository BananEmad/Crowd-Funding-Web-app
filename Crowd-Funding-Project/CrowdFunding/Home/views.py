from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404


# Create your views here.

def index(request):
    # return HttpResponse("mohamed")
    return render(request, "Home/index.html")


def project(request):
    # return HttpResponse("mohamed")
    return render(request, "Home/projects.html")
