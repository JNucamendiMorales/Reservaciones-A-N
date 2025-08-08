from django.urls import path,include
from rest_framework.routers import DefaultRouter
from . import views
from .views import registro, filtrar_categoria,detalle_salon,reservar_salon,SalonViewSet, ReservacionViewSet
from myapp.views import pagina_inicio

router = DefaultRouter()
router.register(r'api/salones', SalonViewSet, basename='salon')
router.register(r'api/reservaciones', ReservacionViewSet, basename='reservacion')

urlpatterns = [
    path('', pagina_inicio, name='inicio'),  # Welcome
    path('home/', views.home_view, name='home'),  # After login
    path('lista-salones/', views.lista_salones, name='lista_salones'),
    path('reservar/', views.crear_reservacion, name='crear_reservacion'),
    path('mis-reservaciones/', views.mis_reservaciones, name='mis_reservaciones'),
    
    #Ver detalles del salon
    path('salon/<int:salon_id>/', detalle_salon, name='detalle_salon'),

    # Filtrar categorias (navbar)
    path('categoria/<str:categoria>/', filtrar_categoria, name='filtrar_categoria'),

    #Reservar salon
    path('salon/<int:salon_id>/reservar/', reservar_salon, name='reservar_salon'),

    #Registro de usuario
    path('registro/', registro, name='registro'),

    # Rutas de la API REST
    path('', include(router.urls)),
]





