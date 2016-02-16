class ProjetsController < ApplicationController
  layout "admin", :except => [:show, :public]
  before_filter :authenticate_user!, :except => [:show, :public] 
  before_filter :is_admin?, :except => [:show, :public] 
  
  def index
    
    @Projet = Projet.all
    @title = "Projets"
  end
def public
    
  end  
  def create
    Projet.create params[:projet]
    redirect_to projets_path, :notice => "Le projet a bien été créé !"

  end
  def new
    @nprojet = Projet.new
    @title = "Nouveau Projet"
  end
  def edit
    @nprojet = Projet.find params[:id]
    @title = @nprojet.title
  end

  def update
    tmp = Projet.find params[:id]
    if tmp.update_attributes params[:projet]
      redirect_to projets_path, :notice => 'Le projet a été mis à jour !'
    else
      redirect_to :back
      flash[:error] = 'Une erreur est Survenue...'
    end
  end

  def destroy
    Projet.destroy params[:id]
    redirect_to :back, :notice => 'Le projet a été supprimé !'
  end
  def show
    @projet = Projet.find params[:id]
    @title = @projet.title
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