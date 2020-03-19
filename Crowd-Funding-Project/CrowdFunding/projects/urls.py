
from django.contrib import admin
from django.urls import path

from Home import views as home_views
# from Home.views import index
from . import views
from django.conf.urls import url
app_name = 'projects'
urlpatterns = [
    url(r'^$', views.all_projects, name='all_projects'),
    url(r'^(?P<id>\d+)$', views.project_details, name='project_details'),

]

