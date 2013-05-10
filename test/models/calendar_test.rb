require "test_helper"

describe Calendar do
  before do
    @calendar = Calendar.new
  end

  it "must be valid" do
    @calendar.valid?.must_equal true
  end
end
