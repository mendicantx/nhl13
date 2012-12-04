class PlayersController < ApplicationController
  # GET /players
  # GET /players.json
  before_filter :set_show_deletes

  def index
    @players = Player.all(:include => :team)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players.as_json(:include=>[:team]) }
    end
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player }
    end
  end

  # GET /players/new
  # GET /players/new.json
  def new
    @player = Player.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player }
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(params[:player])
    @player.update_for_save(request)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render json: @player, status: :created, location: @player }
      else
        format.html { render action: "new" }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /players/1
  # PUT /players/1.json
  def update
    @player = Player.find(params[:id])

    @player.assign_attributes(params[:player])
    @player.update_for_save(request)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to players_url }
      format.json { head :no_content }
    end
  end

  def recent
    @players = Player.includes(:team).where('updated_at > ?', 1.day.ago).order('updated_at desc')


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players.as_json(:include=>[:team]) }
    end
  end

protected
  def set_show_deletes
    @show_deletes = true unless params[:show_deletes].nil?
  end
end
