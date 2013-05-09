require "test_helper"


describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2012,1,1)
  end

  it "must be able to add days" do
    @lday.add(31).must_equal Date.new(2012, 2, 1)
  end

  it "must be able to subtract days" do
    @lday.subtract(7).must_equal Date.new(2011, 12, 25)
  end
end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2012,1,1)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "B"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "AG"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 8)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 4, 15)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 22)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 17)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 27)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 10)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 2)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 8
  end

end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2013,10,30)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "C"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "F"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 3, 31)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 5, 5)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 13)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 9)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 19)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 2)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 1)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 7
  end

end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2014,9,1)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "A"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "E"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 20)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 4, 20)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 3, 5)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 29)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 6, 8)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 22)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 30)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 10
  end
end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2015,12,15)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "B"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "D"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 5)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 4, 12)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 18)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 14)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 24)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 7)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 29)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 8
  end
end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2016,3,30)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "C"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "CB"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 3, 27)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 5, 1)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 10)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 5)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 15)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 5, 29)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 27)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 7
  end
end


describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2017,5,16)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "A"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "A"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 16)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 4, 16)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 3, 1)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 25)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 6, 4)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 18)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 3)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 9
  end
end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2018,7,4)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "B"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "G"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 1)
  end
  it "must retrieve julian easter sunday" do
    @lday.julian_easter.must_equal Date.new(@lday.year, 4, 8)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 14)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 10)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 20)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 3)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 2)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 7
  end
end

describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2019,2,15)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "C"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "F"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 21)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 3, 6)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 30)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 6, 9)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 23)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 1)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 1)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 10
  end

end


describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2020,5,16)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "A"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "ED"
  end
   it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 12)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 26)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 21)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 31)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 14)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 29)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 9
  end

end


describe Lday do
  before do
    @lday = Lday.new
    @lday.date = Date.new(2021,1,16)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "B"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "C"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 4)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 17)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 13)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 23)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 6)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 28)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 8
  end
end

describe Lday do

  before do
    @lday = Lday.new
    @lday.date = Date.new(2022,1,16)
  end


  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "C"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "B"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 17)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 3, 2)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 26)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 6, 5)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 19)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 27)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 10
  end

end

describe Lday do

  before do
    @lday = Lday.new
    @lday.date = Date.new(2023,1,31)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "A"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "A"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 9)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 22)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 18)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 28)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 11)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 3)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 8
  end

end

describe Lday do

  before do
    @lday = Lday.new
    @lday.date = Date.new(2024,2,29)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "B"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "II"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "GA"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 3, 31)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 2, 14)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 9)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 5, 19)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 2)
  end
  it "must retrieve first day of advent" do
    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 12, 1)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 7
  end

end

describe Lday do

  before do
    @lday = Lday.new
    @lday.date = Date.new(2025,6,1)
  end

  it "must be able to return sunday lectionary cycle" do
    @lday.lectionary_sunday_cycle.must_equal "C"
  end
  it "must be able to return weekday lectionary cycle" do
    @lday.lectionary_weekday_cycle.must_equal "I"
  end

  it "must retrieve correct dominical year" do
    @lday.dominical_year.must_equal "E"
  end
  it "must retrieve easter sunday" do
    @lday.easter.must_equal Date.new(@lday.year, 4, 20)
  end
  it "must retrieve epiphany day" do
    @lday.epiphany.must_equal Date.new(@lday.year, 1, 6)
  end
  it "must retrieve ash wednesday" do
    @lday.ash_wednesday.must_equal Date.new(@lday.year, 3, 5)
  end
  it "must retrieve ascension day" do
    @lday.ascension.must_equal Date.new(@lday.year, 5, 29)
  end
  it "must retrieve pentecost day" do
    @lday.pentecost.must_equal Date.new(@lday.year, 6, 8)
  end
  it "must retrieve corpus_christi day" do
    @lday.corpus_christi.must_equal Date.new(@lday.year, 6, 22)
  end
  it "must retrieve first day of advent" do

    @lday.first_day_of_advent.must_equal Date.new(@lday.year, 11, 30)
  end

  it "must retrieve starting week number of ordinary time after easter" do
    @lday.starting_week_of_ordinary_time_after_easter.must_equal 10
  end



describe Lday do
  before do
    @lday = Lday.new
  end

  it "must retrieve julian easter dates successfully for several years" do
    @lday.date = Date.new(2013,4,12)
    @lday.julian_easter.to_s.must_equal "2013-05-05"

    @lday.date = Date.new(2014,1,12)
    @lday.julian_easter.to_s.must_equal "2014-04-20"

    @lday.date = Date.new(2015,4,1)
    @lday.julian_easter.to_s.must_equal "2015-04-12"

    @lday.date = Date.new(2016,5,5)
    @lday.julian_easter.to_s.must_equal "2016-05-01"

    @lday.date = Date.new(2017,6,6)
    @lday.julian_easter.to_s.must_equal "2017-04-16"

    @lday.date = Date.new(2018,7,7)
    @lday.julian_easter.to_s.must_equal "2018-04-08"

    @lday.date = Date.new(2019,8,8)
    @lday.julian_easter.to_s.must_equal "2019-04-28"

    @lday.date = Date.new(2020,9,20)
    @lday.julian_easter.to_s.must_equal "2020-04-19"

    @lday.date = Date.new(2021,10,1)
    @lday.julian_easter.to_s.must_equal "2021-05-02"
  end


  it "must retrieve same date between easter orthodox and easter catholic on year 2014 and 2017" do
    @lday.date = Date.new(2014,4,12)
    @lday.julian_easter.to_s.must_equal "2014-04-20"
    @lday.easter.to_s.must_equal "2014-04-20"

    @lday.date = Date.new(2017,4,12)
    @lday.julian_easter.to_s.must_equal "2017-04-16"
    @lday.easter.to_s.must_equal "2017-04-16"
  end
end

end