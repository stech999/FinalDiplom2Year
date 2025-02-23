сначало устанавливаем django

    pip install Django

после создаем проект 

    django-admin startproject testProject   

перейти в папку проекта 

    cd testProject

после можно проверить запустить сервер

    python manage.py runserver    

теперь создаем наше приложение

    python manage.py startapp test_site 

в нашем проекте python которую создавали самый первый раз
заходим в файл settings ищем поле _INSTALLED_APPS_ и в код 
добавляем название нашего проекта

    INSTALLED_APPS = [
        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.messages',
        'django.contrib.staticfiles',
        'test_site',
    ]

теперь указываем путь к нашим urls в самом проекте пишем

    from django.contrib import admin
    from django.urls import path, include
    
    urlpatterns = [
        path('admin/', admin.site.urls),
        path('', include("test_site.urls")) - это наш путь к нашим urls
    ]

теперь все шаблоны размещаем в папке templates и прописываем 
*url* к шаблонам 

    urlpatterns = [
        path('', views.content, name='home'),
        path('home', views.home, name='home'),
    ]

далее нужно в файде *views* прописать путь к нашим шаблонам

    from django.shortcuts import render
    from django.http import HttpResponse

    def content(request):
        return render(request, "content.html")
    
    def home(request):
    return render(request, "home.html")

для подключения к mysql нужно прописать команду

    pip install mysqlclient

далее в файле settings.py находим database и пишем наши настройки
подключения к базе

    DATABASES = {

        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': 'test_python',
            'USER': 'root',
            'PASSWORD': '',
            'HOST': '127.0.0.1',  # Обычно 'localhost' или IP-адрес
            'PORT': '3307',  # Порт MySQL (по умолчанию 3306)
        }
    }


далее настроим часовой пояс

    TIME_ZONE = 'Europe/Moscow'

создаем супер пользователя 

    python manage.py createsuperuser

по ссылке 127.0.0.1/admin можно зайти в админку

далее 

    python manage.py makemigrations
    python manage.py migrate      

далее в файле models подключаем нашу таблицу и ее поля

    from django.db import models

    class snowboards(models.Model):
    title = models.CharField(max_length=255)

    class Meta:
    db_table = 'название'  # Замените на желаемое имя таблицы

    def __str__(self):
            return self.title  # Для отображения имени товара в админ-панели

Зарегистрировать модель в админ-панели:
В файле admin.py вашего приложения Django зарегистрируйте 
модель Product в админ-панели:

    from django.contrib import admin
    from .models import Product
    
    admin.site.register(Product)

после применяем к базе данным команды

    python manage.py makemigrations
    python manage.py migrate

создание таблицы завершено

теперь как вывести данные из таблицы
заходим в файл views и подключаемся к нужной таюлице например:
    
    from django.shortcuts import render
    from .models import Color

    def home(request):
        colors = Color.objects.all()

        # Или, если нужны только некоторые объекты, можно использовать фильтры
        # red_colors = Color.objects.filter(name__startswith='Красный')
    
        # Передаем данные в шаблон
        context = {'colors': colors}  # Ключ 'colors' будет доступен в шаблоне
        return render(request, "home.html", context)

чтобы брать данные из другой таблицы при добавлении нового товара
нужно добавить код в модели к нужной таблице
например чтобы при добавлении товара в таблице продуктс
выводился цвет добавьте код

    color = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвет",
                              related_name='products')  # Связь с моделью Color

полный код выглядит так

    class Product(models.Model):
        title = models.CharField(max_length=255, verbose_name="Название товара")
        color = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвет",
                                  related_name='products')  # Связь с моделью Color
    
        class Meta:
            db_table = 'Product'  # Замените на желаемое имя таблицы
            verbose_name = "Товар"
            verbose_name_plural = "Товары"
    
        def __str__(self):
            return self.title  # Для отображения имени товара в админ-панели

чтобы в админ панели выглядело лучше в admin.py правим вывод инфы

    from django.contrib import admin
    from .models import Color, Product
    
    # Register your models here.
    
    @admin.register(Product)
    class ProductAdmin(admin.ModelAdmin):
        list_display = ('title', 'color')  # Отображение полей в списке
        list_filter = ('color',)  # Добавляет фильтр по цвету
        search_fields = ('title',)  # Поля для поиска
        ordering = ('title',)
    
    @admin.register(Color)
    class ColorAdmin(admin.ModelAdmin):
        list_display = ('name', 'hex_code')  # Отображение полей в списке
        search_fields = ('name',)
        ordering = ('name',) # Сортировка

для загрузки 1ой картинки нужно установить моудль 

    python -m pip install Pillow  

чтобы было разрешение к папке "media" нужно прописать в settings.py

    import os

    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    STATICFILES_DIRS = [
        os.path.join(BASE_DIR, 'static'),  # Путь к папке с вашими статическими файлами
    ]
    MEDIA_URL = '/media/'  # URL для доступа к медиафайлам (загруженным файлам)
    MEDIA_ROOT = os.path.join(BASE_DIR, 'media')  # Каталог для хранения загруженных файлов

в шаблонах чтобы вывести картинки в шаблон нужно писать так
{% load static %} нужно писать в самом вверху после унаследования к шаблону

    {% extends "base.html" %}
    {% load static %}

    {% for image in skateboard %}
    {% if image.img %}
    <img src="{{ image.img.url }}" alt="{{ image.title }}">
    {% else %}
    <p>Изображение отсутствует</p>
    {% endif %}

в представлении views.py пишем 

    def home(request):
        skateboard = skateboards.objects.all()
    
        # Или, если нужны только некоторые объекты, можно использовать фильтры
        # red_colors = Color.objects.filter(name__startswith='Красный')
    
        # Передаем данные в шаблон
        context = {'skateboard': skateboard}  # Ключ 'colors' будет доступен в шаблоне
        return render(request, "home.html", context)

чтобы вывести цифры без десятичных чисел с разделением пишем в модели

    from django.contrib.humanize.templatetags import humanize # в самом вверху

    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                             verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")

        def formatted_price(self):
        """Форматирует исходную цену для отображения."""
        price = int(self.price)  # Преобразуем в int
        return humanize.intcomma(price).replace(",", " ")  # Форматируем и заменяем запятые

    def formatted_discounted_price(self):
        """Вычисляет и форматирует цену со скидкой для отображения."""
        if self.price_discount:
            discount_amount = self.price * self.price_discount / 100
            price = int(self.price - discount_amount)  # Вычисляем и преобразуем в int
        else:
            price = int(self.price)  # Преобразуем в int
        return humanize.intcomma(price).replace(",", " ")  # Форматируем и заменяем запятые

чтобы вывести данные из таблицы color которые закреплены в ячейке skateboards нужно писать

    {{ skateboard.color_id.title }}