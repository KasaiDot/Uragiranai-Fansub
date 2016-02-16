class NewsController < ApplicationController
  layout "admin", :except => [:show]
  before_filter :authenticate_user!, :except => [:show] 
  before_filter :is_admin?, :except => [:show] 
   def index
    @news = News.paginate( :order => "CREATED_AT DESC", :per_page => 5, :page => params[:page])
    @title = "News"
  end

  def create
    News.create params[:news]
    redirect_to news_index_path, :notice => "Post Créé !"
  end
  def new
    @new = News.new
    @title = "News"
  end
  def edit
    @new = News.find params[:id]
    @title = @new.title
  end

  def update
    tmp = News.find params[:id]
    if tmp.update_attributes params[:news]
      redirect_to news_index_path, :notice => 'Post Mis à jour !'
    else
      redirect_to :back
      flash[:error] = 'Une erreur est Survenue...'
    end
  end

  def destroy
    News.destroy params[:id]
    redirect_to :back, :notice => 'Post supprimé !'
  end
  def show
    @new = News.find params[:id]
    @title = @new.title
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