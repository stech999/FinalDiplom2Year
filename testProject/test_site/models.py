from django.db import models
from django.contrib.humanize.templatetags import humanize

# Create your models here.

class Color(models.Model):
    title = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'Color'  # Замените на желаемое имя таблицы
        verbose_name = "Цвет"
        verbose_name_plural = "Цветов"

    def __str__(self):
        return self.title

class Size(models.Model):
    title = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'Size'  # Замените на желаемое имя таблицы
        verbose_name = "Размер"
        verbose_name_plural = "Размеров"

    def __str__(self):
        return self.title

class Brand(models.Model):
    title = models.CharField(max_length=100, unique=True)

    class Meta:
        db_table = 'Brand'  # Замените на желаемое имя таблицы
        verbose_name = "Брэнд"
        verbose_name_plural = "Брэндов"

    def __str__(self):
        return self.title

class Skateboards(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='skateboards/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='skateboards/', verbose_name="Много картинок")
    # price_discount = models.CharField(max_length=255, verbose_name="Цена со скидкой")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='Skateboards')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='Skateboards')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='Skateboards')

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


    class Meta:
        db_table = 'Skateboards'
        verbose_name = 'Скейтборд'
        verbose_name_plural = 'Скейтбордов'

    def __str__(self):
        return self.title

class Snowboards(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='snowboards/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='snowboards/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='Snowboards')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='Snowboards')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='Snowboards')

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


    class Meta:
        db_table = 'Snowboards'
        verbose_name = 'Сноуборд'
        verbose_name_plural = 'Сноубордов'

    def __str__(self):
        return self.title

class Skis(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='skis/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='skis/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='Skis')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='Skis')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='Skis')

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


    class Meta:
        db_table = 'Skis'
        verbose_name = 'Лыжи'
        verbose_name_plural = 'Лыж'

    def __str__(self):
        return self.title

class Longboards(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='longboards/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='longboards/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='longboards')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='longboards')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='longboards')

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


    class Meta:
        db_table = 'Longboards'
        verbose_name = 'Лонгборд'
        verbose_name_plural = 'Лонгбордов'

    def __str__(self):
        return self.title

class Surfings(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='surfings/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='surfings/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='surfings')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='surfings')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='surfings')

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


    class Meta:
        db_table = 'Surfings'
        verbose_name = 'Серфинг'
        verbose_name_plural = 'Серфингов'

    def __str__(self):
        return self.title

class Sups(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='sups/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='sups/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='sups')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='sups')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='sups')

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


    class Meta:
        db_table = 'Sups'
        verbose_name = 'Sup'
        verbose_name_plural = 'Sups'

    def __str__(self):
        return self.title

class Clothes(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='clothes/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='clothes/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='clothes')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='clothes')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='clothes')

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


    class Meta:
        db_table = 'Clothes'
        verbose_name = 'Одежда'
        verbose_name_plural = 'Одежд'

    def __str__(self):
        return self.title

class Shoes(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='shoes/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='shoes/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='shoes')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='shoes')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='shoes')

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


    class Meta:
        db_table = 'Shoes'
        verbose_name = 'Обувь'
        verbose_name_plural = 'Обувей'

    def __str__(self):
        return self.title

class Accessories(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название товара")
    description = models.CharField(max_length=255, verbose_name="Описание товара")
    img = models.ImageField(upload_to='accessories/', verbose_name="Изображение товара")
    img_lots = models.ImageField(upload_to='accessories/', verbose_name="Много картинок")
    price_discount = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True,
                                         verbose_name="Скидка (%)")
    price = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Цена")
    size_id = models.ForeignKey('Size', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Размеры",
                                related_name='accessories')
    brand_id = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Бренды",
                             related_name='accessories')
    color_id = models.ForeignKey('Color', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Цвета",
                             related_name='accessories')

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


    class Meta:
        db_table = 'Accessories'
        verbose_name = 'Аксессуар'
        verbose_name_plural = 'Аксессуаров'

    def __str__(self):
        return self.title

class Banners(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название акции")
    link = models.URLField(verbose_name="Ссылка")
    img = models.ImageField(upload_to='accessories/', verbose_name="Изображение баннера")


    class Meta:
        db_table = 'Banners'
        verbose_name = 'Баннер'
        verbose_name_plural = 'Баннеров'

    def __str__(self):
        return self.title

