# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def voting_open?
    ENV.has_key?("VOTING")
  end
end
