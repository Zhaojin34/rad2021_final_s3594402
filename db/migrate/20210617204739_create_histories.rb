class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :score
      t.string :number

      t.timestamps
    end
  end
end
