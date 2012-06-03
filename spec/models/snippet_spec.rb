require 'spec_helper'

describe Snippet do
  it { should validate_presence_of :name }
  it { should validate_presence_of :body }
  it { should validate_presence_of :board_id }
end
