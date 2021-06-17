class StaticPagesController < ApplicationController
  @@count = 0
  @@correct = 0
  @@quizID = []
  @@order = []
  @@warning = false
  @@message = "You must choose an answer"
  @@quizNumber = 4
  
  def home
    oldQuizzes = Quiz.all
    if oldQuizzes.length > 0
     oldQuizzes.each do |oldQuiz|
       oldQuiz.destroy
     end
    end
    file = File.read("/home/ubuntu/environment/final_test/quiz.json")
    quizzes = JSON.parse(file)
    quizzes.each do |quiz|
      @@quizID << quiz['id']
      @quiz = Quiz.new(quiz)
      @quiz.save
    end
  end
  
  def startQuiz
    quizzes = Quiz.all
    length = quizzes.length - 1
    range = (0..length).to_a
    @@order = range.sample(@@quizNumber)
    redirect_to '/quiz'
  end
  
  def quiz
    @no = @@count + 1
    @warning = ""
    if @@warning
      @warning = "You must choose an answer"
    end
    json = File.read("/home/ubuntu/environment/final_test/quiz.json")
    obj = JSON.parse(json)
    @question = obj[@@order[@@count]]['question']
    answers = obj[@@order[@@count]]['answers']
    @answer_a = answers['answer_a']
    @answer_b = answers['answer_b']
    @answer_c = answers['answer_c']
    @answer_d = answers['answer_d']
    @answer_e = answers['answer_e']
    @answer_f = answers['answer_f']
  end
  
  def checkAnswer
    json = File.read("/home/ubuntu/environment/final_test/quiz.json")
    obj = JSON.parse(json)
    answer = params[:answer]
    correct = obj[@@order[@@count]]["correct_answer"]
    if !answer
      @@warning = true
      redirect_to :back and return
    end
    if answer == correct
      @@correct = @@correct + 1
      @@warning = false
    end
    @@count = @@count + 1
    if @@count == @@quizNumber
      @@count = 0
      redirect_to '/result'
    else
      redirect_to :back
    end
  end
  
  def result
    @correct = @@correct
    @quizNumber = @@quizNumber
    history = History.new(:score => @@correct, :number => @@quizNumber)
    history.save
    histories = History.all
    length = histories.length
    if length <= 5
      @histories = histories
    else
      @histories = History.find(length-1, length-2, length-3, length-4, length-5)
    end
    @@correct = 0
  end
  
  def clearHistory
    oldHistories = History.all
    if oldHistories.length > 0
     oldHistories.each do |oldHistory|
       oldHistory.destroy
     end
    end
    redirect_to :back
  end
  
  def setQuestionNumber
    @@quizNumber = Integer(params[:question_number])
    puts @@quizNumber
    redirect_to '/start_quiz'
  end
  
end
