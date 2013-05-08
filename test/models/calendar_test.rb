require "minitest_helper"

describe Calendar do
  before do
    @calendar = Calendar.new
  end

  it "must retrieve easter orthodox dates successfully for several years" do
    @calendar.date = Date.new(2013,4,12)
    @calendar.easter_orthodox.to_s.must_equal "2013-05-05"

    @calendar.date = Date.new(2014,1,12)
    @calendar.easter_orthodox.to_s.must_equal "2014-04-20"

    @calendar.date = Date.new(2015,4,1)
    @calendar.easter_orthodox.to_s.must_equal "2015-04-12"

    @calendar.date = Date.new(2016,5,5)
    @calendar.easter_orthodox.to_s.must_equal "2016-05-01"

    @calendar.date = Date.new(2017,6,6)
    @calendar.easter_orthodox.to_s.must_equal "2017-04-16"

    @calendar.date = Date.new(2018,7,7)
    @calendar.easter_orthodox.to_s.must_equal "2018-04-08"

    @calendar.date = Date.new(2019,8,8)
    @calendar.easter_orthodox.to_s.must_equal "2019-04-28"

    @calendar.date = Date.new(2020,9,20)
    @calendar.easter_orthodox.to_s.must_equal "2020-04-19"

    @calendar.date = Date.new(2021,10,1)
    @calendar.easter_orthodox.to_s.must_equal "2021-05-02"
  end

  it "must retrieve easter dates successfully for several years" do
    @calendar.date = Date.new(2013,4,12)
    @calendar.easter.to_s.must_equal "2013-03-31"

    @calendar.date = Date.new(2014,1,12)
    @calendar.easter.to_s.must_equal "2014-04-20"

    @calendar.date = Date.new(2015,4,1)
    @calendar.easter.to_s.must_equal "2015-04-05"

    @calendar.date = Date.new(2016,5,5)
    @calendar.easter.to_s.must_equal "2016-03-27"

    @calendar.date = Date.new(2017,6,6)
    @calendar.easter.to_s.must_equal "2017-04-16"

    @calendar.date = Date.new(2018,7,7)
    @calendar.easter.to_s.must_equal "2018-04-01"

    @calendar.date = Date.new(2019,8,8)
    @calendar.easter.to_s.must_equal "2019-04-21"

    @calendar.date = Date.new(2020,9,20)
    @calendar.easter.to_s.must_equal "2020-04-12"

    @calendar.date = Date.new(2021,10,1)
    @calendar.easter.to_s.must_equal "2021-04-04"
  end
  
  it "must retrieve same date between easter orthodox and easter catholic on year 2014 and 2017" do
    @calendar.date = Date.new(2014,4,12)
    @calendar.easter_orthodox.to_s.must_equal "2014-04-20"
    @calendar.easter.to_s.must_equal "2014-04-20"
    
    @calendar.date = Date.new(2017,4,12)
    @calendar.easter_orthodox.to_s.must_equal "2017-04-16"
    @calendar.easter.to_s.must_equal "2017-04-16"
  end  
end
