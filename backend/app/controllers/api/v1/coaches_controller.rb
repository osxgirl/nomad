class Api::V1::CoachesController < Api::V1::BaseController
     before_action :set_coach, only: [:show, :edit, :update, :destroy]

        def index
           coaches = Coach.all
           render json: coaches
        end

        def create
          respond_with :api, :v1, Coach.create(coach_params)
        end

        def destroy
          respond_with Coach.destroy(params[:id])
        end

        def update
          coach = Coach.find(params["id"])
          coach.update_attributes(coach_params)
          respond_with coach, json: coach
        end

        private

        def coach_params
          params.require(:coach).permit(:id, :name, :timezone, :weekday, :availableat, :availableuntil)
        end
      end
