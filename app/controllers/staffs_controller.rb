class StaffsController < ApplicationController
  layout "admin", :except => [:show]
  before_filter :authenticate_user!, :except => [:show] 
  before_filter :is_admin?, :except => [:show] 
  
  def index
    @staff = Staff.new
    @title = "Staff"
  end

  def create
    Staff.create params[:staff]
    redirect_to staffs_path, :notice => "Membre Ajouté !"
  end
  def edit
    @staff = Staff.find params[:id]
    @title = @staff.pseudo
  end

  def update
    tmp = Staff.find params[:id]
    if tmp.update_attributes params[:staff]
      redirect_to staffs_path, :notice => "Membre Mis à jour !"
    else
      redirect_to :back
      flash[:error] = 'Une erreur est survenue...'
    end
  end

  def destroy
    Staff.destroy params[:id]
    redirect_to :back, :notice => 'Membre Supprimé !'
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
