class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create 
    @snippet = Snippet.new params[:snippet]

    if @snippet.save
      redirect_to snippets_path, notice: "Success"
    else
      render :new
    end
  end
end
