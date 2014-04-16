class UsersController < ApplicationController
  def show
    @players = User.all
  end
end
