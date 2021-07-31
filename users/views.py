from django.contrib.auth import authenticate, get_user_model, login, logout
from django.shortcuts import render, redirect

from django.contrib import messages

User = get_user_model()

def register(request):
    if request.method == "POST":
        first_name = request.POST.get("first_name")
        last_name = request.POST.get("last_name")
        email = request.POST.get("email")
        pass1 = request.POST.get("pass1")
        pass2 = request.POST.get("pass2")
        if pass1 == pass2 and len(pass1) > 8:
            User.objects.create_user(username=email, email=email, first_name=first_name, last_name=last_name, password=pass1)
            return redirect('login')

    return render(request, "registration.html")


def handle_login(request):
    if request.user.is_authenticated:
        return redirect('home')
    else:
        if request.method == 'POST':
            email = request.POST["email"]
            password = request.POST["pass"] 

            user = authenticate(username=email, password=password)

            if user is not None:
                login(request=request, user=user)
                return redirect('home')
            else:
                currUser = User.objects.get(username=email)
                if not currUser.is_active:
                    messages.error(request, "Your account has been temporarily suspeneded.")
                    return redirect('login')
                messages.error(request, 'Please check your credentials!')
                return redirect('login')
    return render(request, "login.html")

def handle_logout(request):
    logout(request)
    return redirect('login')
