class ApplicationController < ActionController::Base

    def welcome 
        if user_signed_in?
            redirect_to workouts_path
        end
    end
end
