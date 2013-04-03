class Calendar < ActiveRecord::Base
  belongs_to :ordo
  belongs_to :celebration

  def easter (d = self.date)

	  # ==========================================
	  # Determin Easter Date for any given year based on http://www.assa.org.au/edm.html#Computer
	  # ==========================================  
	  first_digit, remainder, temp, t_a, t_b, t_c, t_d, t_e = 0, 0, 0, 0, 0, 0, 0, 0

	  y = d.year

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

  def dominical_year (d = self.date)
    dominical = %w[ G F E D C B A]
    leap = d.leap?
  	wday = Date.new(d.year,1,1).wday 
  
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

=begin
	def starting_week_of_ordinary_time_after_easter 
		weeks_between_pentecost_and_advent = (((first_sunday_of_advent) - pentecost).to_i).div(7)  
	  if dominical_year =~ /.*[B].*/
	    ord_week =  36 - weeks_between_pentecost_and_advent
	  else
	    ord_week =  35 - weeks_between_pentecost_and_advent
  	end
  	return ord_week
	end
=end

end
