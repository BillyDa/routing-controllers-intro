class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "you're welcome"
    render :about
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def contest
    flash[:notice] = "No contest"
    redirect_to "/"
  end

  def secrets
    if params[:magic_word] == "gesundheit"
      render "secrets"
    else
      flash[:alert] = "Sorry, you are not authorized to know this secret"
      redirect_to "/"
    end
  end
end
