class PagesController < ApplicationController

  def welcome
    @header = "you're welcome"
    render :about
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://cdn3-www.dogtime.com/assets/uploads/2011/01/file_23262_entlebucher-mountain-dog-300x189.jpg"
  end
end
