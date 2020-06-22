class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :workout, index: true, foreign_key: true
      t.string :notes
      t.integer :sets
      t.integer :reps
      t.integer :weight
    end
  end
end
