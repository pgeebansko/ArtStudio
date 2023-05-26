from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path

urlpatterns = [
    path('', views.index, name='home'),
    path('lessons', views.LessonsList.as_view(), name='lessons_page'),
    path('lesson/<int:pk>/', views.SingleLesson.as_view()),
    path('gallery', views.gallery, name='gallery_page'),
    path('contact', views.contact, name='contact_page'),
]


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
