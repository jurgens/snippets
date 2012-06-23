require 'spec_helper'

describe SnippetsController do
  describe "index" do
    before do
      snippet = mock Snippet, all: []
      board = mock Board, slug: 'slug', snippets: snippet
      Board.should_receive(:find_by_slug).and_return(board)
      get :index, slug: 'slug'
    end

    specify do
      should respond_with :success
    end
  end
end
