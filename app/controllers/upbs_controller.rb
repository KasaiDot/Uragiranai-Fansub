class UpbsController < ApplicationController
  before_filter :authenticate_user! 
  def index
    @title = "Mon Compte"
  end
   def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_path, :notice => 'Votre Profil / Mot de passe a bien été Mis à Jour !'
    else
      redirect_to :back, :error => 'Une erreur est survenue...'
    end
  end
end
