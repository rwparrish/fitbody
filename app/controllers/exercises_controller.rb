class ExercisesController < ApplicationController

    before_action :find_exercise

    def index
        @exercises = current_user.exercises 
    end

    def show
        @workout = @exercise.workout 
    end

    def destroy
        @workout = @exercise.workout
        @exercise.delete
        redirect_to workout_path(@workout)
    end

    private

    def find_exercise
        @exercise = current_user.exercises.find_by_id(params[:id])
    end
end
