from django.contrib import admin
from .models import Color, Size, Brand, Skateboards, Snowboards, Skis, Longboards, Surfings, Sups, Clothes, Shoes, \
    Accessories, Banners

# Register your models here.

@admin.register(Color)
class Color(admin.ModelAdmin):
    list_display = ('title',)  # Отображение полей в списке
    list_filter = ('title',)
    search_fields = ('title',)
    ordering = ('title',)  # Сортировка


@admin.register(Size)
class Size(admin.ModelAdmin):
    list_display = ('title',)
    list_filter = ('title',)
    search_fields = ('title',)
    ordering = ('title',)


@admin.register(Brand)
class Brand(admin.ModelAdmin):
    list_display = ('title',)
    list_filter = ('title',)
    search_fields = ('title',)
    ordering = ('title',)


@admin.register(Skateboards)
class Skateboards(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Skis)
class Skis(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Snowboards)
class Snowboards(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Longboards)
class Longboards(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Surfings)
class Surfings(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Sups)
class Sups(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Clothes)
class Clothes(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Shoes)
class Shoes(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)


@admin.register(Accessories)
class Accessories(admin.ModelAdmin):
    list_display = (
    'title', 'description', 'img', 'img_lots', 'price_discount', 'price', 'size_id', 'brand_id', 'color_id')
    list_filter = ('title',)
    search_fields = ('title', 'price', 'description', 'price_discount',)
    ordering = ('title',)

@admin.register(Banners)
class Banners(admin.ModelAdmin):
    list_display = ('title', 'img', 'link',)
    list_filter = ('title',)
    search_fields = ('title',)
    ordering = ('title',)
