from .models import Salon,Reservacion
from django.shortcuts import get_object_or_404, render,redirect
from .forms import RegistroForm,ReservacionForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login
from django.contrib.auth.forms import UserCreationForm
from rest_framework import viewsets
from .serializers import SalonSerializer, ReservacionSerializer
from django.contrib import messages

# Create your views here.

#Inicio.html----------------------------------------------------------

def pagina_inicio(request):
    # Filtra salones de tendencia
    tendencia = Salon.objects.filter(calificacion__gte=4.6)

    # Filtra salones más cercanos
    mas_cercanos = Salon.objects.filter(ciudad="CDMX")

    context = {
        'tendencia': tendencia,
        'mas_cercanos': mas_cercanos
    }

    return render(request, "theme/inicio.html", context )

#filtrar_categoria.html------------------------------------------------

def filtrar_categoria(request, categoria):
    salones = Salon.objects.filter(categoria__iexact=categoria)
    context = {
        'salones': salones,
        'categoria': categoria.capitalize(),
    }
    return render(request, 'theme/salones_categoria.html', context)

#detalle_salon.html-----------------------------------------------------

def detalle_salon(request, salon_id):
    salon = get_object_or_404(Salon, id=salon_id)
    return render(request, 'theme/salon_detalle.html', {'salon': salon})

#reservar salon-------------------------------------------------------------

def reservar_salon(request, salon_id):
    if request.method == 'POST':
        salon = get_object_or_404(Salon, id=salon_id)

        # Aquí agregarías la lógica para crear una reserva, por ejemplo:
        # - Verificar disponibilidad
        # - Crear objeto Reserva en base de datos
        # Por ahora solo simularemos la reserva exitosa:

        messages.success(request, f'¡Has reservado el salón "{salon.nombre}" con éxito!')

        # Redirigir a la página de inicio o donde prefieras
        return redirect('inicio')

    # Si no es POST, redirigir a detalle del salón
    return redirect('detalle_salon', salon_id=salon_id)



def registro(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Cuenta creada exitosamente. Por favor inicia sesión.')
            return redirect('login')
    else:
        form = RegistroForm()
    return render(request, 'theme/registro.html', {'form': form})




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









def home_view(request):
    return render(request, "home.html")


#Endpoints

class SalonViewSet(viewsets.ModelViewSet):
    queryset = Salon.objects.all()
    serializer_class = SalonSerializer

class ReservacionViewSet(viewsets.ModelViewSet):
    queryset = Reservacion.objects.all()
    serializer_class = ReservacionSerializer