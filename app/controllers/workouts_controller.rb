class WorkoutsController < ApplicationController

    def index
        @workouts = current_user.workouts
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = current_user.workouts.build(workout_params)

    end
    
    def edit 
    end

    def update
    end

    def destroy
    end

    private 

    def workout_params
        params.require(:workout).permit(:name, :date, :length, :notes, :exercise_id, exercise_attributes: [
            :name, :sets, :reps, :weight, :notes
        ])
    end
end
