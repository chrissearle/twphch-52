# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def auth_url
    FlickRaw.auth_url :frob => flickr.auth.getFrob, :perms => 'read'
  end

  def logged_in?
    !session[:username].blank?
  end

  def not_own_image?(image)
    session[:userid] != image.photographer.flickr_id
  end
end
