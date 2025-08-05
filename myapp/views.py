from .models import Salon,Reservacion
from django.shortcuts import get_object_or_404, render,redirect
from .forms import ReservacionForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login
from django.contrib.auth.forms import UserCreationForm

# Create your views here.
def lista_salones(request):
    salones = Salon.objects.filter(disponible=True)
    return render(request, 'salones/lista_salones.html', {'salones': salones})

@login_required
def crear_reservacion(request):
    if request.method == 'POST':
        form = ReservacionForm(request.POST)
        if form.is_valid():
            reservacion = form.save(commit=False)
            reservacion.usuario = request.user
            reservacion.estado = 'pendiente'
            reservacion.save()
            return redirect('lista_salones')  # O donde quieras redirigir después
    else:
        form = ReservacionForm()

    return render(request, 'reservaciones/crear_reservacion.html', {'form': form})

@login_required
def mis_reservaciones(request):
    reservaciones = Reservacion.objects.filter(usuario=request.user)
    return render(request, 'reservaciones/mis_reservaciones.html', {'reservaciones': reservaciones})




def registro(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            usuario = form.save()
            login(request, usuario)
            return redirect('lista_salones')
    else:
        form = UserCreationForm()

    return render(request, 'registration/registro.html', {'form': form})


def pagina_inicio(request):
    return render(request, "theme/inicio.html")

def home_view(request):
    return render(request, "home.html")

