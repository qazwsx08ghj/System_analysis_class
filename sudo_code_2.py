#2 Register

def register(request):
	    if request.method == "POST":
        registerform = UserCreationForm(request.POST)
        if registerform.is_valid():#Valid data from client
            logout()
            Save data logic
            login(request, user)
            return redirect('/')#Back to main site
        else:
            Failed logic
            return redirect('/')
        return render(request, 'register_page')