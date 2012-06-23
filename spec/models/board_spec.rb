require 'spec_helper'

describe Board do
  it { should belong_to :owner }
  it { should have_many :snippets }

  it { should validate_presence_of :name }
end
