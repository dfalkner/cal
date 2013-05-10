require "test_helper"

describe Celebration do
  before do
    @celebration = Celebration.new
  end

  it "must be valid" do
    @celebration.valid?.must_equal true
  end
end
