class AddQuizToHistory < ActiveRecord::Migration[5.0]
  def change
    add_reference :histories, :quiz, foreign_key: true
  end
end
