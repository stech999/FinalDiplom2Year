from django import template

register = template.Library()

@register.filter(name='attr')
def add_class(field, attribute):
    data = attribute.split(":")
    try:
        field.field.widget.attrs[data[0]] = data[1]
    except:
        pass
    return field