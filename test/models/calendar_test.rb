require "minitest_helper"

describe Calendar do
  before do
    @calendar = Calendar.new
  end

  it "must retrieve easter orthodox date successfully" do
    @calendar.date = Date.new(2013,4,12)
    @calendar.easter_orthodox[:gregorian].to_s.must_equal "2013-05-05"
    
    @calendar.date = Date.new(2014,2,2)
    @calendar.easter_orthodox[:gregorian].to_s.must_equal "2014-04-20"
  end
  
  it "must retrieve same date between easter orthodox and easter catholic on year 2014 and 2017" do
    @calendar.date = Date.new(2014,4,12)
    @calendar.easter_orthodox[:gregorian].to_s.must_equal "2014-04-20"
    @calendar.easter.to_s.must_equal "2014-04-20"
    
    @calendar.date = Date.new(2017,4,12)
    @calendar.easter_orthodox[:gregorian].to_s.must_equal "2017-04-16"
    @calendar.easter.to_s.must_equal "2017-04-16"
  end  
end
