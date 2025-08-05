from django.urls import path
from . import views

urlpatterns = [
    path('', views.pagina_inicio, name='inicio'), #Welcome
    path('home/', views.home_view, name='home'), #After login
    path('salones/', views.lista_salones, name='lista_salones'),
    path('reservar/', views.crear_reservacion, name='crear_reservacion'),
    path('mis-reservaciones/', views.mis_reservaciones, name='mis_reservaciones'),
]





