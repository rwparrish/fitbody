class WorkoutsController < ApplicationController

    before_action :find_workout, only: [:show, :edit, :update, :destroy]


    def index
        @workouts = current_user.workouts
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = current_user.workouts.build(workout_params)
        if @workout.save
            redirect_to @workout
        else
            render :new
        end
    end

    def show
    end

    def edit 
    end

    def update
        if @workout.update(workout_params)
            redirect_to @workout
        else
            render :edit
        end
    end

    # def destroy
    #     binding.pry
    #     @workout.delete
    #     redirect_to workouts_path
    # end

    private 

    def workout_params
        params.require(:workout).permit(:name, :date, :length, :notes, exercise_ids:[], exercises_attributes: [
            :name, :sets, :reps, :weight, :notes, :user_id
        ])
    end

    def find_workout
        @workout = current_user.workouts.find_by_id(params[:id])
    end
end
