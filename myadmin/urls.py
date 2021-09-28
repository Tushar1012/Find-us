from django.urls import path
from . import views

urlpatterns = [
    path('', views.adminhome),
    path('manageusers/', views.manageusers),
    path('manageuserstatus/', views.manageuserstatus),
    path('addcat/', views.addcat),
    path('addsubcat/', views.addsubcat)
]