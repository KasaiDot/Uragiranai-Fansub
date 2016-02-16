class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  after_filter :reset_last_captcha_code!

  before_filter :stats
  protect_from_forgery
  
before_filter :set_charset_db
  def set_charset_db
    suppress(ActiveRecord::StatementInvalid) do
      ActiveRecord::Base.connection.execute 'SET NAMES UTF8'
    end
  end
 
  after_filter :set_charset_header
 
  def set_charset_header
    content_type = headers["Content-Type"] || 'text/html'
    if /^text\//.match(content_type)
      headers["Content-Type"] = "#{content_type}; charset=utf-8" 
    end
  end  
  
  private
  def stats
    Stat.first.increment!(:visites, by = 1)
  end
  
end
