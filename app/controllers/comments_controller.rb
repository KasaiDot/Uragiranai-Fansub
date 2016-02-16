class CommentsController < ApplicationController
layout "admin", :except => [:show]
  before_filter :authenticate_user!
 before_filter :is_admin?,  :except => [:create, :show]

  def index
    @search = Comment.search(params[:q])
    @results = @search.result
    @comments = Comment.paginate( :order => "CREATED_AT DESC", :per_page => 5, :page => params[:page])
    @title = "Commentaires"
  end
  def create
    Comment.create params[:comment]
    redirect_to :back, :notice => 'Le commentaire a bien été posté !'
  end
   def destroy
    Comment.destroy params[:id]
    redirect_to :back , :notice => 'Commentaire Supprimé !'
  end
  def edit
    @comment = Comment.find params[:id]
    @title = "Commentaires | Édition"
  end

  def update
    tmp = Comment.find params[:id]
    if tmp.update_attributes params[:comment]
      redirect_to comments_path, :notice => 'Votre Commentaire a été mis à jour !'
    else
      redirect_to :back
      flash[:error] = 'Une erreur est Survenue...'
    end
  end
  def show
    @comment = Comment.find params[:id]
    @title = "Commentaires | Vue"
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
