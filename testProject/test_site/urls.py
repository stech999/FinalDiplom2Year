from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views

urlpatterns = [
    path('', views.content, name='content'), # это главная страница там отображаются другие данные
    path('skateboards/', views.skateboards, name='skateboards'), # это ссылка на другую страницу где отображаются skateboards
    path('skateboard/<int:pk>/', views.skateboard, name='skateboard'),  # URL для деталей
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)