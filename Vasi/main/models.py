from django.db import models


# списък рисунки
class Picture(models.Model):
    title = models.CharField('Заглавие', max_length=200)
    order = models.SmallIntegerField('Номер', default=1, blank=True, null=False)
    picture = models.ImageField('Рисунка(файл):', upload_to='article_pics')
    author = models.CharField('Автор', max_length=60)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Рисунка'
        verbose_name_plural = 'Рисунки'


# списък уроци
class Lesson(models.Model):
    title = models.CharField('Заглавие', max_length=200)
    content = models.TextField('Описание(текст)')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Урок'
        verbose_name_plural = 'Уроци'


# списък стъпки на урок
class Item(models.Model):
    lesson = models.ForeignKey(Lesson, verbose_name='Урок', on_delete=models.SET_NULL, null=True)
    title = models.TextField('Пояснение')
    order = models.SmallIntegerField('Номер', default=1, blank=True, null=False)
    picture = models.ImageField('Рисунка(файл):', upload_to='article_pics', default='')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Стъпка'
        verbose_name_plural = 'Стъпки'
