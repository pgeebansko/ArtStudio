from django.shortcuts import render
from .models import *
from django.views.generic.base import View


# Начална страница.
def index(request):
    return render(request, 'main/index.html')


# страница с уроци.
class LessonsList(View):
    def get(self, request):
        lessons_list = Lesson.objects.order_by('id')
        print(lessons_list)
        context = {'lessons': lessons_list,
                   }
        return render(request, 'main/lessons.html', context)


# страница с конкретен урок.
class SingleLesson(View):
    def get(self, request, pk):
        items_list = Item.objects.filter(lesson=pk)
        context = {'items': items_list,
                   }
        return render(request, 'main/SingleLesson.html', context)


# страница за галерия.
def gallery(request):
    pictures = Picture.objects.order_by('order')
    context = {
        'pictures': pictures,
    }
    return render(request, 'main/gallery.html', context)


# *****************************************************************
# страница за галерия VASI
def galleryVasi(request):
    pictures = Picture.objects.order_by('order').filter(author='Васи')
    context = {
        'pictures': pictures,
    }
    return render(request, 'main/gallery.html', context)
# *****************************************************************


# страница за контакти.
def contact(request):
    return render(request, 'main/contact.html')

