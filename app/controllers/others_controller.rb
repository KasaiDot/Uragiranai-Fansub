class OthersController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?
def create
    
    if Sa.first.update_attributes params[:sa]
      redirect_to :back, :notice => "Texte mis à jour !"
    else
      redirect_to :back
      flash[:error] = 'Une erreur est Survenue...'
    end
  end
  
    private

def is_admin?
  if current_user.admin?
    true
  elsif current_user.redacteur?
    true
  else
    redirect_to admin_path
    flash[:error] = 'Vous n\'êtes pas autorisé à accéder à cette Page !'
  end
end
end
