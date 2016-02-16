class ImgupsController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :is_admin?
   def index
    @title = "Images"
  end

  def create
    Imgup.create params[:imgup]
    redirect_to :back, :notice => 'Image Ajoutée !'
  end
  def destroy
    Imgup.destroy params[:id]
    redirect_to :back, :notice => 'Image Supprimée !'  
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
