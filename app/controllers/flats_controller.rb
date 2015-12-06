class FlatsController < ApplicationController
  def index
    @flats = Flat.where(user_id: params[:user_id])
  end
end
