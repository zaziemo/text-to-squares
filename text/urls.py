from django.urls import path
from . import views

urlpatterns = [
    path('', views.text_list, name='text_list'),
]

