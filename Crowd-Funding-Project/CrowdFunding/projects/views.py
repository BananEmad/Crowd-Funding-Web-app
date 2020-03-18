from django.shortcuts import render

# Create your views here.
from .models import Projects


def all_projects(request):
    all_projects = Projects.objects.all()

    context = {
        'all_projects': all_projects,
    }
    return render(request, 'projects.html', context)


def project_details(request, id):
    pass