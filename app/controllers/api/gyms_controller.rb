class Api::GymsController < ApplicationController

  def index
    if team = params[:controlling_team]
      @gyms = Gym.where(controlling_team: team)
    else
      @gyms = Gym.all
    end

    render json: @gyms
  end

end
