from django.contrib import admin
from .models import *

admin.site.register(Picture)
admin.site.register(Lesson)
admin.site.register(Item)

"""
администраторски акаунт
        user: admin
    password: pgee2023
"""