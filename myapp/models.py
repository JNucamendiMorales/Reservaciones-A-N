from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Salon(models.Model):
    nombre = models.CharField(max_length=100)
    capacidad = models.IntegerField()
    descripcion = models.TextField()
    disponible = models.BooleanField(default=True)

    def __str__(self):
        return self.nombre

class Reservacion(models.Model):
    salon = models.ForeignKey(Salon, on_delete=models.CASCADE)
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    fecha_inicio = models.DateTimeField()
    fecha_fin = models.DateTimeField()
    estado = models.CharField(max_length=20, default='pendiente')

    def __str__(self):
        return f"{self.usuario.username} - {self.salon.nombre}"

