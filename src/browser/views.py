from django.shortcuts import render
from myapp.models import Producto
from django.db.models import Q

# Create your views here.
def index(request, *args, **kwargs):
    
    productos = Producto.objects.all()
    
    if request.method == "GET" and 'searched' in request.GET:
        searched = request.GET['searched']
        searched = Producto.objects.filter(Q(nombre__icontains=searched) | Q(descripcion__icontains=searched))
        
        return render(request, "snippets/search_bar.html", {
            "searched": searched,
            "productos": productos
        })
    else:
        return render(request, "snippets/search_bar.html", {
            "productos": productos
        })
