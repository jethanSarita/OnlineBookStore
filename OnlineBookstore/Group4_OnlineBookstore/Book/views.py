from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views import View
from .form import BookForm, UserRegisterForm, UserLoginForm
from Customer.models import User

# Create your views here.


def index(request):
    #return HttpResponse("Hello World!")
    return render(request, 'index.html', {})

class BookTransactions(View):
    template = 'trans.html'

    def get(self, request):
        book = BookForm()
        return render(request, self.template, {'form': book})

class UserRegistration(View):
    template = 'reg.html'

    def get(self, request):
        user = UserRegisterForm()
        return render(request, self.template, {'form': user})

    def post(self, request):
        user = UserRegisterForm(request.POST)

        if user.is_valid():
            user.save()
            return redirect('/book/index')
        return render(request, self.template, {'form': user})

    '''def register(request):

        if request.method == 'POST':
            form = UserRegisterForm(request.POST)
            if form.is_valid():
                user = form.save(commit=False)
                lastUser = User.objects.last()
                if lastUser:
                    user.user_ID = lastUser.user_ID + 1
                else:
                    user.user_ID = 1

                user.save()
                return redirect('index.html')
        else:
            form = UserRegisterForm
        return render(request, 'index.html', {'form': form})'''

class UserLogin(View):
    template = 'login.html'

    def get(self, request):
        user = UserLoginForm()
        return render(request, self.template, {'form': user})

