class ProgressionsController < ApplicationController
   layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?
  def index
    Progression.create
    redirect_to :back, :notice => 'Un nouveau Slide a été créé !'
  end
  def update
    tmp = Progression.find params[:id]
    tmp.update_attributes params[:progression]
    redirect_to :back, :notice => 'Slide mis à jour !'
  end
   def destroy
    Progression.destroy params[:id]
    redirect_to :back, :notice => 'Slide Supprimé !'
  end
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
