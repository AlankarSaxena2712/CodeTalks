from django.urls import path

from home.views import *

urlpatterns = [
    path('', home, name="home"),
    path('post-question', add_ques, name="add-ques"),
]
