from django.shortcuts import render, redirect
from django.views import View
from .form import customerRegisterForm, customerLoginForm
from .models import User


# Create your views here.


def customerApp(request):
    return render(request, 'customerApp.html', {})


class customerRegister(View):
    template = 'customerRegister.html'

    def get(self, request):
        form = customerRegisterForm()
        return render(request, self.template, {'form': form})

    def post(self, request):
        form = customerRegisterForm(request.POST)
        username = request.POST['username']
        try:
            formCheck = User.objects.get(username=username)
            return render(request, self.template, {'form': form})
        except:
            print('temp')
        if form.is_valid():
            form.save()
        return redirect('index')


class customerLogin(View):
    template = 'customerLogin.html'

    def get(self, request):
        form = customerLoginForm()
        return render(request, self.template, {'form': form})

    def post(self, request):
        form = customerLoginForm(request.POST)
        username = request.POST['username']
        password = request.POST['password']
        try:
            checkForm = User.objects.get(username=username, password=password)
        except:
            return render(request, self.template, {'form': form})
        return redirect('customerHome')



def customerHome(request):
    test = 1
    return render(request, 'customerHome.html', {})
