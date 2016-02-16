class ForcedsController < ApplicationController
 layout "admin", :except => [:show]
  before_filter :authenticate_user!, :except => [:show]
  before_filter :is_admin?, :except => [:show]

def index
end
def create

    if Forced.first.update_attributes params[:forced]
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
