
from django.contrib import admin
from django.urls import path

from Home import views as home_views
# from Home.views import index
from django.urls import path,include
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_views.index),
    path('projects/', include('projects.urls', namespace='projects')),
    path('projects_category/<int:id>', home_views.project_category),
    path('projects_search/', home_views.project_search),
]
