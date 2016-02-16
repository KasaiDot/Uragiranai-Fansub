class UsersController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?
  
  def index
    @users = User.paginate( :order => "CREATED_AT DESC", :per_page => 20, :page => params[:page])
    @title = "Utilisateurs"
  end
  def edit
    @user = User.find params[:id]
    @title = @user.username
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => 'Utilisateur Édité  !'
    else
      redirect_to :back, :notice => "Une erreur est survenue... Note : Les Champs PASSWORD doivent être renseignés."
    end
  end
  def destroy
    User.destroy params[:id]
    redirect_to :back, :notice => 'Utilisateur Supprimé !' 
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