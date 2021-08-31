class CoachesController < ApplicationController

  def index
    coaches = Coach.all
    render json: CoachSerializer.new(coaches)
  end

  def create
    coach = Coach.new(coach_params)
         if coach.save
             render json: CoachSerializer.new(coach)
         else
             render json: {error: "could not save"}
         end
     end

  def show
    coach = Coach.find(params[:id])
    render json: coach.to_json(except: [:created_at, :updated_at])
  end

  def update
      coach = Coach.find(params[:id])
      if coach.update(coach_params)
          render json: CoachSerializer.new(coach)
      else
          render json: {error: "could not save"}
      end
  end

  def destroy
      coach = Coach.find(params[:id])
      coach.destroy
      render json: {coach: "successfully deleted #{coach.detail}"}
  end

  private
  def coach_params
      params.require(:coach)
  end
  
end
