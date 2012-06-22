require 'spec_helper'

describe Snippet do
  it { should validate_presence_of :name }
  it { should validate_presence_of :body }
  it { should validate_presence_of :board_id }

  describe "search" do
    before do
      @good_snippet = create :snippet, name: "batman"
      @bad_snippet = create :snippet, name: "joker"
    end

    specify do
      Snippet.search('batman').should == [@good_snippet]
    end
  end
end
