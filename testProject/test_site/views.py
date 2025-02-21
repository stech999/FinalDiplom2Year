from django.shortcuts import render, get_object_or_404
from .models import Skateboards, Snowboards, Skis, Longboards, Surfings, Sups, Clothes, Shoes, Accessories, Banners


def content(request):
    banner = Banners.objects.all()  # Получите все баннеры
    context = {'banners': banner}
    return render(request, "content.html", context)

def catalog(request):
    return render(request, "catalog.html")

def snowboards(request):
    items = Snowboards.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "snowboards.html", context)

def snowboard(request, pk):
    item = get_object_or_404(Snowboards, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "snowboard.html", context)

def skis(request):
    items = Skis.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "skis.html", context)

def ski(request, pk):
    item = get_object_or_404(Skis, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "ski.html", context)

def skateboards(request):
    items = Skateboards.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "skateboards.html", context)

def skateboard(request, pk):
    item = get_object_or_404(Skateboards, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "skateboard.html", context)

def longboards(request):
    items = Longboards.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "longboards.html", context)

def longboard(request, pk):
    item = get_object_or_404(Longboards, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "longboard.html", context)

def surfings(request):
    items = Surfings.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "surfings.html", context)

def surfing(request, pk):
    item = get_object_or_404(Surfings, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "surfing.html", context)

def sups(request):
    items = Sups.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "sups.html", context)

def sup(request, pk):
    item = get_object_or_404(Sups, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "sup.html", context)

def clothes(request):
    items = Clothes.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "clothes.html", context)

def clothe(request, pk):
    item = get_object_or_404(Clothes, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "clothe.html", context)

def shoes(request):
    items = Shoes.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "shoes.html", context)

def shoe(request, pk):
    item = get_object_or_404(Shoes, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "shoe.html", context)

def accessories(request):
    items = Accessories.objects.all()
    # Передаем данные в шаблон
    context = {'items': items}
    return render(request, "accessories.html", context)

def accessorie(request, pk):
    item = get_object_or_404(Accessories, pk=pk)
    # Передаем данные в шаблон
    context = {'item': item}
    return render(request, "accessorie.html", context)
