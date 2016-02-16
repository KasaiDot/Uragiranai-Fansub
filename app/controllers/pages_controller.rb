class PagesController < ApplicationController
   layout "admin"
  before_filter :authenticate_user! 
  before_filter :is_admin?
  def update
    tmp = Page.find params[:id]
    if tmp.update_attributes params[:page]
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
  else
    redirect_to admin_path
    flash[:error] = 'Vous n\'êtes pas autorisé à accéder à cette Page !'
  end
end
end
