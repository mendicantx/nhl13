class TeamsController < ApplicationController
  def index
    @teams = Team.all()


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams.as_json() }
    end
  end

  def show
    @team = Team.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team }
    end
  end
end
