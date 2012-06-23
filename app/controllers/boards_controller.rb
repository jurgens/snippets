class BoardsController < ApplicationController

  inherit_resources

  before_filter :authenticate_user!

  def create
    create! { collection_path }
  end

  def update
    update! { collection_path }
  end

  protected

  def collection
    @boards = current_user.boards
  end

  def begin_of_association_chain
    current_user
  end
end
