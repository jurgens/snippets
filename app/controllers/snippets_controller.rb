class SnippetsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :load_boards, only: [:new,:create]

  has_scope :search

  inherit_resources

  protected

  def begin_of_association_chain
    if user_signed_in?
      current_user
    end
  end

  def load_boards
    @boards = current_user.boards
  end
end
