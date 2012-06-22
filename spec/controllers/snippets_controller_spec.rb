require 'spec_helper'

describe SnippetsController do
  describe "index" do
    before do
      #sign_in create(:user)
      get :index #, search: 'something'
    end

    specify do
      should respond_with :success
    end
  end
end
