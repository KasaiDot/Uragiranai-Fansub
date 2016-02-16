class PartenairesController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?
  def index
    Partenaire.create
    redirect_to admin_path, :notice => 'Un nouveau Partenaire a été ajouté !'
  end
  def update
    tmp = Partenaire.find params[:id]
    tmp.update_attributes params[:partenaire]
    redirect_to :back, :notice => 'Partenaire mis à jour !'
  end
   def destroy
    Partenaire.destroy params[:id]
    redirect_to :back, :notice => 'Partenaire Supprimé !'
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
