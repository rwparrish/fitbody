class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.date :date
      t.string :length
      t.string :notes

      t.timestamps
    end
  end
end
