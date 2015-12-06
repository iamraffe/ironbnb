class StaticPagesController < ApplicationController
  def index
    @flats = Flat.all
  end

  def help
  end
end
