class Lday

  attr_accessor :date


  def initialize(date=nil)
    date = Date.today if date.nil?
    @date = date
  end

  def year
    self.date.year
  end

  def easter

    # ==========================================
    # Determin Easter Date for any given year based on http://www.assa.org.au/edm.html#Computer
    # ==========================================
    first_digit, remainder, temp, t_a, t_b, t_c, t_d, t_e = 0, 0, 0, 0, 0, 0, 0, 0

    y = self.date.year

    first_digit = y / 100 #first 2 digits of year
    remainder_19 = y.modulo(19) #remainder of year / 19

    # calculate PFM (Pascal Full Moon) date
    temp = (first_digit - 15) / 2 + 202 - 11 * remainder_19

    case first_digit
    when 21, 24, 25, 27..32, 34, 35, 38
      temp = temp - 1
    when 33, 36, 37, 39, 40
      temp = temp - 2
    end

    temp = temp.modulo(30)

    t_a = temp + 21
    t_a = t_a - 1 if temp == 29
    t_a = t_a - 1 if (temp == 28 and remainder_19 > 10)

    #find the next Sunday
    t_b = (t_a - 19).modulo(7)

    t_c = (40 - first_digit).modulo(4)
    t_c = t_c + 1 if t_c == 3
    t_c = t_c + 1 if t_c > 1

    temp = y.modulo(100)
    t_d = (temp + temp / 4).modulo(7)

    t_e = ((20 - t_b - t_c - t_d).modulo(7)) + 1
    d = t_a + t_e

    #return the date
    if d > 31 then
      d = d - 31
      m = 4
    else
      m = 3
    end
    edate = Date.new(y,m,d) # Easter Date
  end

  def easter_start
    easter
  end

  def subtract(day_amount)
    self.date - day_amount
  end

  def add(day_amount)
    self.date + day_amount
  end

  def julian_easter
    # http://www.smart.net/~mmontes/ortheast.html#ALG
    # The Date of Orthodox Easter: A variation of Gauss' algorithm
    year = self.date.year
    r1 = year.modulo(19)
    r2 = year.modulo(4)
    r3 = year.modulo(7)
    ra = 19 * r1 + 16
    r4 = ra.modulo(30)
    rb = (2*r2)+(4*r3)+(6*r4)
    r5 = rb.modulo(7)
    rc = r4 + r5
    return (Date.new(year,4,3) + rc)
  end

  def lectionary_sunday_cycle
    case year.modulo(3)
    when 1
      "A"
    when 2
      "B"
    when 0
      "C"
    else
      "-"
    end

  end

  def lectionary_weekday_cycle
    case year.modulo(2)
    when 1
      "I"
    when 0
      "II"
    else
      "-"
    end

  end

  def dominical_year
    dominical = %w[ G F E D C B A]
    leap = self.date.leap?
    wday = Date.new(self.date.year,1,1).wday

    case wday
    when 0
      if !leap
        dom_year = "A"
      else
        dom_year = "AG"
      end
    when 1
      if !leap
        dom_year = "G"
      else
        dom_year = "GA"
      end
    when 2
      if !leap
        dom_year = "F"
      else
        dom_year = "FE"
      end
    when 3
      if !leap
        dom_year = "E"
      else
        dom_year = "ED"
      end
    when 4
      if !leap
        dom_year = "D"
      else
        dom_year = "DC"
      end
    when 5
      if !leap
        dom_year = "C"
      else
        dom_year = "CB"
      end
    when 6
      if !leap
        dom_year = "B"
      else
        dom_year = "BA"
      end
    end
    return dom_year
  end

  def epiphany_sunday #first sunday after jan 2
    self.(year, 1, 2)
    while !(temp.wday == 0) do temp += 1 end
    return temp
  end

  def epiphany
    Date.new(self.year, 01, 06)
  end

  def baptism_of_the_lord
    temp = Date.new(self.year, 01, 02)
    while !(temp.wday ==0) do temp += 1 end #epiphany
    case temp.day
      when 2..6
        temp += 1
        while !(temp.wday ==0) do temp += 1 end
    when 7
      temp += 1
    when 8
      temp += 1
    else
      while !(temp.wday ==0) do temp += 1 end
    end
    return temp
  end

  def ash_wednesday
    self.easter - 46
  end

  def ascension
    self.easter + 39
  end

  # need to move this to a model for usa or dioceses celebrations
  def ascension_sunday
    self.easter + 42
  end

  def pentecost
    self.easter + 49
  end

  def holy_trinty #technically not a principal celebration
    self.easter + 56
  end

  def corpus_christi
    self.easter + 63
  end

  def sacred_heart
    self.easter + 68
  end

  def immaculate_heart
    self.easter + 69
  end

  def first_day_of_advent
    temp = Date.new(year, 12, 25)
    if (temp.wday > 0)
      until (temp.wday == 0) do #locate 4th Sunday of Advent
        temp -= 1
      end
      temp -= 21
    else
      temp -= 28
    end
  end

  def starting_week_of_ordinary_time_after_easter
    weeks_between_pentecost_and_advent = (((first_day_of_advent) - pentecost).to_i).div(7)
    ord_week =  35 - weeks_between_pentecost_and_advent
  end
=begin # drf replaced this code with above on May 1, 2013
  def starting_week_of_ordinary_time_after_easter
    weeks_between_pentecost_and_advent = (((first_day_of_advent) - pentecost).to_i).div(7)
    if dominical_year =~ /.*[B].*/
      ord_week =  36 - weeks_between_pentecost_and_advent
    else
      ord_week =  35 - weeks_between_pentecost_and_advent
    end
    return ord_week
  end
=end

end