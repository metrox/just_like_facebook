class HomeController < ApplicationController
  def index
   @users = User.order(:username).page(params[:page]).per(2)
   @usr = User.all
  end
end
