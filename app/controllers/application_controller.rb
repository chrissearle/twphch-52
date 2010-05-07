# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  helper_method :voting_open?, :results_open?

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def voting_open?
    ENV.has_key?("VOTING") and !results_open?
  end

  def results_open?
    ENV.has_key?("RESULTS")
  end

  
end
