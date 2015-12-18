class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # TODO: Reaplace for protect_from_forgery with: :null_session
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers
  layout 'application'

	def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end
  
  after_filter :set_csrf_cookie_for_ng
  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin']  = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS, PATCH'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age']       = '1728000'
  end

  def options                                                                                                                                                                                                                                                                             
    head :status => 200, :'Access-Control-Allow-Headers' => 'Accept, Content-type, X-Requested-With, X-Prototype-Version, X-AdminUser-Email, X-AdminUser-Token' 
    head :status => 200, :'Access-Control-Allow-Methods' => 'POST, PUT, PATCH, DELETE, GET, OPTIONS'
  end
  
  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin']  = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS, PATCH'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token, accept, Content-type'
      headers['Access-Control-Max-Age']       = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end

  protected
    # In Rails 4.1 and below
    # Read more: http://stackoverflow.com/a/15761835/2203554
    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end

end
