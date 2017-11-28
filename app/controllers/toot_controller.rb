class TootController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def index
  end

def create
  @toot = current_user.toots.create(toot_params)
  @toot.save!

  redirect_to user_path(id: current_user.id)
end

  def timeline
    ids = current_user.following
    ids.push(current_user.id.to_s)

    @toots = Toot.toots_for(ids)
  end

  private

  def toot_params
    params.require(:toot).permit(:message)
  end

end
