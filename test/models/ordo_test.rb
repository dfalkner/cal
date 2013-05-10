require "test_helper"

describe Ordo do
  before do
    @ordo = Ordo.new
  end

  it "must be valid" do
    @ordo.valid?.must_equal true
  end
end
