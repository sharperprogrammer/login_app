class PagesController < ApplicationController
  
  def index
    if logged_in?
      redirect_to home_path
    else
      redirect_to signup_path
    end
  end
  
  def home
    # can only get to this path if logged_in? is true
    require_user
  end
  
  def require_user
    redirect_to root_path if !logged_in?
  end
  
end