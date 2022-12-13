from django.http import HttpResponse
from .models import Question
from django.http import Http404
from django.template import loader
from django.shortcuts import get_object_or_404, render


def index(request):
    latest_question_list = Question.objects.order_by('-pub_date')[:5]
    template = loader.get_template('core/index.html')
    context = {
        'latest_question_list': latest_question_list,
    }
    return HttpResponse(template.render(context, request))

def detail(request, question_id):
    try:
        question = Question.objects.get(pk=question_id)
    except Question.DoesNotExist:
        raise Http404("Question does not exist")
    return render(request, 'core/detail.html', {'question': question})

def results(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    response = "You're looking at the results of question %s."
    return HttpResponse(response % question.id)

def vote(request, question_id):
    return HttpResponse("You're voting on question %s." % question_id)    