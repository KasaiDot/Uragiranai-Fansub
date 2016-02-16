class AdminController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?

  def index
    @title = "Administration"
  end
private

def is_admin?
  if current_user.admin?
    true
  elsif current_user.redacteur?
    true
  else
    redirect_to root_path
    flash[:error] = 'Vous n\'êtes pas autorisé à accéder à cette Page !'
  end
end

  
end
