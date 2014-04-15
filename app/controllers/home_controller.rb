class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def index
  end

  # def auth_callback
  #   auth = request.env['omniauth.auth']
  #   session[:current_user] = { :nickname => auth.info['nickname'],
  #                                         :image => auth.info['image'],
  #                                         :uid => auth.uid }
  #   redirect_to root_url
  
  # end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to profile_path(session[:user_id]), notice: "Signed in!"
  end


end
