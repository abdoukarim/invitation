class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :mailer_set_url_options
  
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end
  
  private
 
  def access_for_admin
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'admin' && password == 'passer'
    end
  end

end
