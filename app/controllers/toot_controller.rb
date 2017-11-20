class TootController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index

  end


  def users
    @users = User.all
  end
end
