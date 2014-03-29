class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to new_order_url
  end

  def status
    if session[:user_id]
      render json: { logged_in: true }
    else
      render nothing: true, status: :unauthorized
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
