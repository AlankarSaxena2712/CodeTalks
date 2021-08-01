from django.urls import path

from home.views import *

urlpatterns = [
    path('', home, name="home"),
    path('post-question', add_ques, name="add-ques"),
    path('comment', post_comment, name="post-comment"),
    path('question/<slug:topic>', ques_detail, name="ques-detail"),
]
