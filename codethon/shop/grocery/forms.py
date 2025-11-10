from django import forms
from .models import UserProfile
from .models import Salesperson
from .models import Product

class my_form(forms.ModelForm):
    confirm_password = forms.CharField(widget=forms.PasswordInput(), label="Confirm Password")

    class Meta:
        model = UserProfile
        fields = ['name', 'email', 'mobile', 'password', 'confirm_password']
        widgets = {'password': forms.PasswordInput()}

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get("password")
        confirm_password = cleaned_data.get("confirm_password")
        if password and confirm_password and password != confirm_password:
            self.add_error('confirm_password', "Passwords do not match")
        return cleaned_data

class LoginForm(forms.Form):
    email = forms.EmailField(widget=forms.EmailInput(attrs={
        'class': 'form-control',
        'placeholder': 'Enter email',
        'id': 'id_email'
    }))
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': 'Password',
        'id': 'id_password'
    }))

class SalespersonSignupForm(forms.ModelForm):
    VEHICLE_CHOICES = [
        ('Bike', 'Bike'),
        ('Scooty', 'Scooty'),
        ('Tata Ace', 'Tata Ace'),
        ('Auto', 'Auto'),
    ]
    vehicle_type = forms.ChoiceField(choices=VEHICLE_CHOICES, label="Vehicle Type")
    confirm_password = forms.CharField(widget=forms.PasswordInput(), label="Confirm Password")

    class Meta:
        model = Salesperson
        fields = ['name', 'phone', 'email', 'vehicle_type', 'password', 'confirm_password']
        widgets = {'password': forms.PasswordInput()}

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get("password")
        confirm_password = cleaned_data.get("confirm_password")
        if password and confirm_password and password != confirm_password:
            self.add_error('confirm_password', "Passwords do not match")
        return cleaned_data