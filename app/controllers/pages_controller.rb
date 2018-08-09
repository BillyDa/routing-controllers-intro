class PagesController < ApplicationController

  def welcome
    @header = "you're welcome"
    render :about
  end
end
