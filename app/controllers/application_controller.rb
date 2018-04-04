class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :all_categories
  

  def all_categories
  	@categories = Category.all
  end

end
