from django.shortcuts import render, redirect, get_object_or_404
from .forms import RegistrationForm
from django.contrib.auth.decorators import login_required
from django.db.models import Q
from django.http import HttpResponseBadRequest
from django.contrib.humanize.templatetags.humanize import intcomma
from .models import Skateboards, Snowboards, Skis, Longboards, Surfings, Sups, Clothes, Shoes, Accessories, Banners


def search_all(request):
    query = request.GET.get('q')
    results = []

    if query:
        # Поиск по каждой модели
        snowboards = Snowboards.objects.filter(Q(title__icontains=query))
        skis = Skis.objects.filter(Q(title__icontains=query))
        skateboards = Skateboards.objects.filter(Q(title__icontains=query))
        longboards = Longboards.objects.filter(Q(title__icontains=query))
        surfings = Surfings.objects.filter(Q(title__icontains=query))
        sups = Sups.objects.filter(Q(title__icontains=query))
        clothes = Clothes.objects.filter(Q(title__icontains=query))
        shoes = Shoes.objects.filter(Q(title__icontains=query))
        accessories = Accessories.objects.filter(Q(title__icontains=query))

        # Добавьте результаты в общий список
        results.extend(snowboards)
        results.extend(skis)
        results.extend(skateboards)
        results.extend(longboards)
        results.extend(surfings)
        results.extend(sups)
        results.extend(clothes)
        results.extend(shoes)
        results.extend(accessories)

    results_with_classnames = []
    for result in results:
        results_with_classnames.append({
            'object': result,
            'class_name': result.__class__.__name__
        })

    result_count = len(results)  # Получаем количество результатов
    context = {'results': results_with_classnames, 'query': query, 'result_count': result_count}
    return render(request, 'search_results.html', context)


@login_required
def my_view(request):  # используем только для сокрытия к каким то шаблонам
    # Этот код будет выполнен только для авторизованных пользователей
    return render(request, 'my_template.html')


def register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')  # Перенаправляем на страницу входа
    else:
        form = RegistrationForm()
    return render(request, 'registration/register.html', {'form': form})


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


def add_to_cart(request, model_name, pk):
    model = None
    if model_name == 'snowboards':
        model = Snowboards
    elif model_name == 'skis':
        model = Skis
    elif model_name == 'skateboards':
        model = Skateboards
    elif model_name == 'longboards':
        model = Longboards
    elif model_name == 'surfings':
        model = Surfings
    elif model_name == 'sups':
        model = Sups
    elif model_name == 'clothes':
        model = Clothes
    elif model_name == 'shoes':
        model = Shoes
    elif model_name == 'accessories':
        model = Accessories
    else:
        # Обработка ошибки: модель не найдена
        return HttpResponseBadRequest("Invalid model name")  # Или другое сообщение об ошибке

    item = get_object_or_404(model, pk=pk)  # Получаем объект товара

    cart = request.session.get('cart', {})  # Получаем корзину из сессии

    item_id = f"{model_name}_{pk}"  # Создаем уникальный ID товара (model_name_pk)

    # Определяем цену товара (с учетом скидки)
    if item.price_discount and item.price_discount > 0:
        price = item.price - (item.price * item.price_discount / 100)  # Цена как число
    else:
        price = item.price  # Цена как число

    if item_id in cart:
        cart[item_id]['quantity'] += 1
    else:
        cart[item_id] = {
            'model_name': model_name,  # Сохраняем имя модели
            'title': item.title,
            'price': float(price),  # Сохраняем цену как число
            'quantity': 1,
        }

    request.session['cart'] = cart  # Сохраняем корзину в сессию

    return redirect('cart_view')  # Перенаправляем на страницу корзины


def cart_view(request):
    cart = request.session.get('cart', {})
    cart_items = []
    total_price = 0

    for item_id, item_data in cart.items():
        model_name = item_data['model_name']  # Получаем имя модели
        pk = item_id.split('_')[1]  # Получаем pk из item_id

        model = None
        if model_name == 'snowboards':
            model = Snowboards
        elif model_name == 'skis':
            model = Skis
        elif model_name == 'skateboards':
            model = Skateboards
        elif model_name == 'longboards':
            model = Longboards
        elif model_name == 'surfings':
            model = Surfings
        elif model_name == 'sups':
            model = Sups
        elif model_name == 'clothes':
            model = Clothes
        elif model_name == 'shoes':
            model = Shoes
        elif model_name == 'accessories':
            model = Accessories
        else:
            continue  # Пропускаем неизвестные модели

        try:
            item = model.objects.get(pk=pk)  # Получаем объект товара

            # Определяем цену товара (с учетом скидки) и форматируем ее
            if item.price_discount and item.price_discount > 0:
                formatted_price = item.formatted_discounted_price()
                price = item.price - (item.price * item.price_discount / 100)  # Цена для расчета
            else:
                formatted_price = item.formatted_price()
                price = item.price  # Цена для расчета

            cart_items.append({
                'item': item,
                'quantity': item_data['quantity'],
                'model_name': model_name,
                'item_id': item_id,
                'formatted_price': formatted_price,  # Передаем в шаблон форматированную цену
            })
            total_price += price * item_data['quantity']

        except model.DoesNotExist:
            # Обработка ошибки: товар не найден
            pass  # Или удалите товар из корзины

    total_price_formatted = intcomma(int(total_price)).replace(",", " ")

    context = {'cart_items': cart_items, 'total_price': total_price_formatted, }
    return render(request, 'cart.html', context)


def remove_from_cart(request, item_id):
    cart = request.session.get('cart', {})
    if item_id in cart:
        del cart[item_id]
        request.session['cart'] = cart
    return redirect('cart_view')
