from django.shortcuts import render

# Create your views here.
from .models import Projects
from donations.views import all_donated
from django.db.models import Sum

# Create your views here.



def all_projects(request):
    all_projects = Projects.objects.all()
    context = {
        'all_projects': all_projects,
    }
    return render(request, 'projects.html', context)


def project_details(request, id):
    project_details = Projects.objects.get(id=id)
    all_donations = all_donated(request, id)
    context = {
        'project': project_details,
        'all_donations': all_donations
    }
    return render(request, 'project_details.html', context)

