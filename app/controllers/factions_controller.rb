class FactionsController < ApplicationController

  def index
    @factions = Faction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @factions }
    end
  end

end
