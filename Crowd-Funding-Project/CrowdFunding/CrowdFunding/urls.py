from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from Home import views as home_views
from users import views as user_views
# from Home.views import index
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_views.index),
    path('profile/<int:user_id>', user_views.profile),
    path('editUser/', user_views.editUser),
    path('addInfo/', user_views.addInfo),
    path('projects/', include('projects.urls', namespace='projects')),
    path('projects_category/<int:id>', home_views.project_category),
    path('projects_search/', home_views.project_search),
    path('register/', user_views.register, name='register'),
    path('login/', user_views.login_user, name='login'),
    path('logout/', user_views.logout_user, name='logout')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
