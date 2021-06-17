json.extract! quiz, :id, :question, :description, :answers, :multiple_correct_answers, :correct_answers, :correct_answer, :explanation, :tip, :tags, :category, :difficulty, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
