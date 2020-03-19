from django.shortcuts import render
from .models import Donations
from django.db.models import Sum

# Create your views here.


def all_donated(request, id):
    Donated = Donations.objects.filter(project_id=id)
    DonatedSum = Donated.aggregate(Sum('donation_amount'))
    print(Donated)
    print(DonatedSum)
    return(DonatedSum)



