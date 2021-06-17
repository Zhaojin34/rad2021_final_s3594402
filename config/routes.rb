Rails.application.routes.draw do
  #get 'static_pages/home'
  
  root 'static_pages#home'
  get 'start_quiz', to: 'static_pages#startQuiz'
  get 'quiz', to: 'static_pages#quiz'
  get 'result', to: 'static_pages#result'
  get 'clear_histories', to: 'static_pages#clearHistory'
  
  post 'check', to: 'static_pages#checkAnswer'
  post 'setQuestionNumber', to: 'static_pages#setQuestionNumber'

  resources :quizzes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
