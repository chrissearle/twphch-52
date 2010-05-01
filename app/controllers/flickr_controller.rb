class FlickrController < ApplicationController
  def frob
    frob = params[:frob]

    auth_token = flickr.auth.getToken :frob => frob

    session[:authtoken] = auth_token.token

    login = flickr.test.login

    session[:username] = login.username
    session[:userid] = login.id

    logger.info("User #{login.username} logged in - ID #{login.id}")

    redirect_to images_path
  end

  def logout
    logger.info("User #{session[:username]} logged out")

    session.delete(:username)
    session.delete(:userid)

    redirect_to images_path
  end
end
