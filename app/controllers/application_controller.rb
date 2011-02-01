class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :voting_open?, :results_open?

  def voting_open?
    ENV.has_key?("VOTING") and !results_open?
  end

  def results_open?
    ENV.has_key?("RESULTS")
  end
end
