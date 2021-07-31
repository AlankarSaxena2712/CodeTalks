from django.contrib.auth import logout
from django.urls import path

from users.views import handle_login, handle_logout, register

urlpatterns = [
    path("register", register, name='register'),
    path("login", handle_login, name='login'),
    path("logout", handle_logout, name='logout'),
]
