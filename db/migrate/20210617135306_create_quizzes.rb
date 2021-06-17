class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :description
      t.string :answers, :array => true, :length => 6
      t.string :multiple_correct_answers
      t.string :correct_answers, :array => true, :length => 6
      t.string :correct_answer
      t.string :explanation
      t.string :tip
      t.string :tags, :array => true
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
