from django.shortcuts import render
from django.utils import timezone
from .models import Content

def text_list(request):
    contents = Content.objects.filter(created_date__lte=timezone.now()).order_by('created_date')
    return render(request, 'text/text_list.html', {'contents': contents})
