class HomeController < ApplicationController
  def index
    @news = News.paginate( :order => "CREATED_AT DESC",  :conditions => ["programmation < ?",Time.now.to_s], :per_page => 5, :page => params[:page])
    @title = "Accueil"
    respond_to do |format|
		format.html
  		format.rss { render :html => @news }
     end 
  end
  def staff
    @title = "Staff"
  end
  def projetstermines
    @title = "Projets Terminés"
  end
  def projetsencours
    @title = "Projets en cours"
  end
  def ddl
    @title = "DDL"   
  end
end
