class ExercisesController < ApplicationController

    before_action :find_exercise, only: [:show]
    before_action :authenticate_user!

    def index
        @exercises = current_user.exercises 
    end

    def new
        if params[:workout_id]
            @workout = current_user.workouts.find_by(id: params[:workout_id])
            if @workout 
                @exercise = current_user.exercises.build
            else
                redirect_to workouts_path
            end
        else
            @exercise = current_user.exercises.build
        end
    end

    def create 
        @exercise = current_user.exercises.create(exercise_params)
        if @exercise.valid?
            redirect_to @exercise
        else
            render :new
        end
    end

    def show
        @workout = @exercise.workout 
    end


    private

    def find_exercise
        @exercise = current_user.exercises.find_by_id(params[:id])
    end

    def exercise_params
        params.require(:exercise).permit(:name, :sets, :reps, :weight, :notes, :user_id, :workout_id)
    end
end
