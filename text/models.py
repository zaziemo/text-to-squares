from django.conf import settings
from django.db import models
from django.utils import timezone

class Content(models.Model):
    text = models.TextField()
    permalink = models.CharField(max_length=200)
    created_date = models.DateTimeField(default=timezone.now)

