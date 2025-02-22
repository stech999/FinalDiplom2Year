from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views
from django.contrib.auth import views as auth_views  # Импортируем встроенные представления

urlpatterns = [
    path('', views.content, name='content'),
    path('search.css/', views.search_all, name='search_all'),
    path('login/', auth_views.LoginView.as_view(), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('register/', views.register, name='register'),
    path('catalog/snowboards/', views.snowboards, name='snowboards'),
    path('catalog/snowboard/<int:pk>/', views.snowboard, name='snowboard'),
    path('catalog/skis/', views.skis, name='skis'),
    path('catalog/ski/<int:pk>/', views.ski, name='ski'),
    path('catalog/skateboards/', views.skateboards, name='skateboards'),
    path('catalog/skateboard/<int:pk>/', views.skateboard, name='skateboard'),
    path('catalog/longboards/', views.longboards, name='longboards'),
    path('catalog/longboard/<int:pk>/', views.longboard, name='longboard'),
    path('catalog/surfings/', views.surfings, name='surfings'),
    path('catalog/surfing/<int:pk>/', views.surfing, name='surfing'),
    path('catalog/sups/', views.sups, name='sups'),
    path('catalog/sup/<int:pk>/', views.sup, name='sup'),
    path('catalog/clothes/', views.clothes, name='clothes'),
    path('catalog/clothe/<int:pk>/', views.clothe, name='clothe'),
    path('catalog/shoes/', views.shoes, name='shoes'),
    path('catalog/shoe/<int:pk>/', views.shoe, name='shoe'),
    path('catalog/accessories/', views.accessories, name='accessories'),
    path('catalog/accessorie/<int:pk>/', views.accessorie, name='accessorie'),
    path('add_to_cart/<str:model_name>/<int:pk>/', views.add_to_cart, name='add_to_cart'),
    path('cart/', views.cart_view, name='cart_view'),
    path('remove_from_cart/<str:item_id>/', views.remove_from_cart, name='remove_from_cart'),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
