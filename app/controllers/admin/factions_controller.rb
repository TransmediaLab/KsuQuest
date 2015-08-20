class Admin::FactionsController < ApplicationController
  layout "admin"

  before_filter :login_required, :admin_required
#  before_filter :find_task, only: [:show, :edit, :update, :destroy]

  respond_to :html

  # GET /factions
  # GET /factions.json
  def index
    @factions = Faction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @factions }
    end
  end

  # GET /factions/1
  # GET /factions/1.json
  def show
    @faction = Faction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @faction }
    end
  end

  # GET /factions/new
  # GET /factions/new.json
  def new
    @faction = Faction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @faction }
    end
  end

  # GET /factions/1/edit
  def edit
    @faction = Faction.find(params[:id])
  end

  # POST /factions
  # POST /factions.json
  def create
    @faction = Faction.new(params[:faction])

    respond_to do |format|
      if @faction.save
        format.html { redirect_to admin_factions_url, notice: 'Faction was successfully created.' }
        format.json { render json: @faction, status: :created, location: @faction }
      else
        format.html { render action: "new" }
        format.json { render json: @faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /factions/1
  # PUT /factions/1.json
  def update
    @faction = Faction.find(params[:id])

    respond_to do |format|
      if @faction.update_attributes(params[:faction])
        format.html { redirect_to admin_factions_url, notice: 'Faction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factions/1
  # DELETE /factions/1.json
  def destroy
    @faction = Faction.find(params[:id])
    @faction.destroy

    respond_to do |format|
      format.html { redirect_to admin_factions_url }
      format.json { head :no_content }
    end
  end
end
