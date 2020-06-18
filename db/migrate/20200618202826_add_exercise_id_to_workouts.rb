class AddExerciseIdToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :exercise_id, :integer
  end
end
