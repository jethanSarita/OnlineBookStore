from django.forms import ModelForm
from django import forms
from .models import User


class customerRegisterForm(ModelForm):
    username = forms.CharField(widget=forms.TextInput)
    password = forms.CharField(widget=forms.PasswordInput)
    dateOfBirth = forms.CharField(widget=forms.DateInput)
    firstName = forms.CharField(widget=forms.TextInput)
    lastName = forms.CharField(widget=forms.TextInput)
    emailAddress = forms.CharField(widget=forms.TextInput)
    gender_choices = [(0, "Female"), (1, "Male")]
    gender = forms.ChoiceField(choices=gender_choices, widget=forms.Select)

    class Meta:
        model = User
        fields = ['username', 'password', 'firstName', 'lastName', 'emailAddress', 'dateOfBirth', 'gender']


class customerLoginForm(ModelForm):
    username = forms.CharField(widget=forms.TextInput)
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ['username', 'password']
