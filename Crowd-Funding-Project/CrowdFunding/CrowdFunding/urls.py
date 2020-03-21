
from django.contrib import admin
from django.urls import path

from Home import views as home_views
from users import views as user_views
# from Home.views import index
from django.urls import path,include
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_views.index),
    path('profile/<int:user_id>', user_views.profile),
    path('editUser/<int:user_id>', user_views.editUser),
    path('projects/', include('projects.urls', namespace='projects')),
]
