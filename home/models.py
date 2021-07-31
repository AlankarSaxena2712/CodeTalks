from django.db import models
from django.utils import timezone
from django.contrib.auth import get_user_model

User = get_user_model()

QUESTION_FIELDS = (
    ("Development", "Development"),
    ("Competetive Coding", "Competetive Coding"),
)

class Question(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    topic = models.CharField(max_length=150)
    field = models.CharField(max_length=20, choices=QUESTION_FIELDS)
    question = models.TextField()
    timestamp = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.topic