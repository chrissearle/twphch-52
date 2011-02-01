# coding: UTF-8

class FlickrController < ApplicationController
  def frob
    frob = params[:frob]

    if voting_open?
      flickr.auth.getToken :frob => frob

      login = flickr.test.login

      session[:username] = login.username
      session[:userid] = login.id

      logger.info("User #{login.username} logged in - ID #{login.id}")
    else
      flash[:error] = "Avstemningen er stengt."
    end
    
    redirect_to images_path
  end

  def logout
    logger.info("User #{session[:username]} logged out")

    session.delete(:username)
    session.delete(:userid)

    redirect_to images_path
  end
end
