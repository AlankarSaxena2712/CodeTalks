from home.models import Question, QuestionComment
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

@login_required
def ques_detail(request, topic):
    ques = Question.objects.get(slug=topic)
    comments = QuestionComment.objects.filter(question=ques)
    context = {
        "question": ques,
        "comments": comments
    }
    return render(request, "ques_detail.html", context)

@login_required
def post_comment(request):
    if request.method == "POST":
        comment = request.POST.get("comment")
        user = request.user
        ques_id = request.POST.get("ques_id")
        ques = Question.objects.get(id=ques_id)

        cmnt = QuestionComment(comment=comment, user=user, question=ques)
        cmnt.save()
        return redirect(f"question/{ques.slug}")
