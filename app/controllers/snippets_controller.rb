class SnippetsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :load_boards, only: [:new,:create]

  inherit_resources

  protected

  def begin_of_association_chain
    current_user
  end

  def load_boards
    @boards = current_user.boards
  end
end
