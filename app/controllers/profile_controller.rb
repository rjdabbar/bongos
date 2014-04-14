class ProfileController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id]) 
    @profile = Profile.find_by_steam_id(user.uid) || Profile.create_for(user)
  end

  def create
  end

  def new
  end
end
