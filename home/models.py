from django.db import models
from django.utils import timezone
from django.contrib.auth import get_user_model

from slugify import slugify

User = get_user_model()

QUESTION_FIELDS = (
    ("Development", "Development"),
    ("Competetive Coding", "Competetive Coding"),
)

class Question(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    topic = models.CharField(max_length=150)
    slug = models.CharField(max_length=150)
    field = models.CharField(max_length=20, choices=QUESTION_FIELDS)
    question = models.TextField()
    timestamp = models.DateTimeField(default=timezone.now)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.topic)
        super(Question, self).save(*args, **kwargs)

    def __str__(self):
        return self.topic

class QuestionComment(models.Model):
    comment = models.TextField()
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    parent = models.ForeignKey("self", on_delete=models.CASCADE, null=True)
    timestamp = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.comment
    