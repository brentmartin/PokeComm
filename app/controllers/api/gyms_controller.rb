class Api::GymsController < ApplicationController

  def index
    if team = params[:controlling_team]
      (render_bad_request && return) unless ["red","blue","yellow"].include?(team)
      @gyms = Gym.where(controlling_team: team)
    else
      @gyms = Gym.all
    end

    render json: @gyms
  end

  protected

  def render_bad_request
    render(nothing: true, status: :bad_request)
  end

end
