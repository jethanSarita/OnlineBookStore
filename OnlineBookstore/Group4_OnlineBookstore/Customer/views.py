from django.shortcuts import render, redirect, get_object_or_404
from django.views import View
from .form import customerRegisterForm, customerLoginForm, customerEditInfoForm
from .models import User
from django.db import connection
from django.http import HttpResponseRedirect

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
        cursor = connection.cursor()
        params = [username, password]
        cursor.callproc('authCheck', params)
        result = cursor.fetchall()
        cursor.close()
        if result[0][0] == 0:
            return render(request, self.template, {'form': form})
        else:
            request.session['username'] = username
            return HttpResponseRedirect('customerHome')
        '''try:
            checkForm = User.objects.get(username=username, password=password)
        except:
            return render(request, self.template, {'form': form})

        return redirect('customerHome')'''

def logout(request):
    try:
        del request.session['username']
    except KeyError:
        pass
    return redirect('index')

def customerHome(request):
    username = request.session.get('username', 'empty')
    if username == 'empty':
        return redirect('index')
    else:
        return render(request, 'customerHome.html', {'username': username})

class customerEditInfo(View):
    template = 'customerEditInfo.html'
    def get(self, request):
        username = request.session.get('username', 'empty')
        if username == 'empty':
            return redirect('index')
        else:
            user_info = get_object_or_404(User, username=username)
            form = customerEditInfoForm(initial={
                'firstName': user_info.firstName,
                'lastName': user_info.lastName,
                'dateOfBirth': user_info.dateOfBirth,
                'emailAddress': user_info.emailAddress,
                'gender': user_info.gender,
            })
            return render(request, self.template, {'username': username, 'form': form})

    def post(self, request):
        username = request.session.get('username', 'empty')
        firstName = request.POST['firstName']
        lastName = request.POST['lastName']
        dateOfBirth = request.POST['dateOfBirth']
        emailAddress = request.POST['emailAddress']
        gender = request.POST['gender']
        params = [username, firstName, lastName, emailAddress, dateOfBirth, gender]
        cursor = connection.cursor()
        cursor.callproc('editCustomerInfo', params)
        cursor.close()
        return HttpResponseRedirect('customerHome')