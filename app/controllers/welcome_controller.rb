class WelcomeController < ApplicationController
  def index
    render action: :orders if current_user
  end
end
