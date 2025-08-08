from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

from .models import Reservacion

class RegistroForm(UserCreationForm):
    email = forms.EmailField(required=True, widget=forms.EmailInput(attrs={
        'placeholder': 'Correo electrónico',
    }))

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']




class ReservacionForm(forms.ModelForm):
    class Meta:
        model = Reservacion
        fields = ['salon', 'fecha_inicio', 'fecha_fin']
        widgets = {
            'fecha_inicio': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
            'fecha_fin': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
        }