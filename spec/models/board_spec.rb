require 'spec_helper'

describe Board do
  it { should belong_to :owner }
  it { should validate_presence_of :name }
end
