class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.boards.any?
      board_path resource.boards.first
    else
      root_path
    end
  end
end
