# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def voting_open?
    ENV.has_key?("VOTING") and !results_open?
  end

  def results_open?
    ENV.has_key?("RESULTS")
  end

  def auth_url
    session[:frob] ||= flickr.auth.getFrob

    FlickRaw.auth_url :frob => session[:frob], :perms => 'read'
  end

  def logged_in?
    !session[:username].blank?
  end

  def not_own_image?(image)
    session[:userid] != image.photographer.flickr_id
  end
end
