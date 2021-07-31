from home.models import Question
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required


@login_required
def home(request):
    ques = Question.objects.all()
    context = {
        "questions": ques
    }
    return render(request, 'home.html', context)

@login_required
def add_ques(request):
    if request.method == "POST":
        topic = request.POST.get('question_topic')
        field = request.POST.get('question_field')
        question = request.POST.get('question_data')

        ques = Question(topic=topic, field=field, question=question, user=request.user)
        ques.save()
        return redirect('home')
    return render(request, 'add_ques.html')
