module ApplicationHelper
  def url_for_github(user)
    "https://github.com/#{@event.owner}"
  end
end
