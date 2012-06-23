class SnippetsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :load_boards, only: [:new, :create]
  before_filter :find_board

  has_scope :search

  inherit_resources

  def index
    @snippets = apply_scopes(@board.snippets).all
  end

  protected

  def begin_of_association_chain
    current_user
  end

  def find_board
    @board = Board.find_by_slug params[:slug]
  end

  def load_boards
    @boards = current_user.boards
  end
end
