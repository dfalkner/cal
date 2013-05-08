# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Loading Color table"
[ {code: 'green', name:  'Green'},
  {code: 'violet', name:  'Violet'},
  {code: 'white', name:  'White'},
  {code: 'red', name:  'Red'},
  {code: 'black', name:  'Black'}
].each {|i| Color.find_or_create_by_code(i)}

puts "Loading Common table"
[ {code: 'none', name:  'none'},
  {code: 'Ab', name:  'Abbot'},
  {code: 'B', name:  'Bishop'},
  {code: 'Bb', name:  'Bishops'},
  {code: 'BVM', name:  'Blessed Virgin Mary'},
  {code: 'D', name:  'Doctor of the Church'},
  {code: 'Dd', name:  'Doctors of the Church'},
  {code: 'De', name:  'Deacon'},
  {code: 'Ded', name:  'Dedication of Church'},
  {code: 'HM', name:  'Holy Men'},
  {code: 'HW', name:  'Holy Women'},
  {code: 'M', name:  'Martyr'},
  {code: 'Mm', name:  'Martyrs'},
  {code: 'P', name:  'Priest'},
  {code: 'Pp', name:  'Priests'},
  {code: 'Pas', name:  'Pastor'},
  {code: 'Po', name:  'Pope'},
  {code: 'Rel', name:  'Religious'},
  {code: 'Tea', name:  'Teacher'},
  {code: 'Underpriv', name:  'Those who work for underpivileged'},
  {code: 'V', name:  'Virgin'},
  {code: 'Vv', name:  'Virgins'}
].each {|i| Common.find_or_create_by_code(i)}

puts "Loading Ordo table"
[ {code: 'gen', description:  'General Calendar'},
  {code: 'usa', description:  'United States of America'},
  {code: 'usaa', description:  'United States of America Anglican'},
  {code: 'ar', description:  'Argentina'},
  {code: 'br', description:  'Brazil'},
  {code: 'au', description:  'Australia'},
  {code: 'ca', description:  'Canada'},
  {code: 'cl', description:  'Chile'},
  {code: 'hr', description:  'Croatia'},
  {code: 'eng', description:  'England'},
  {code: 'gr', description:  'Greece'},
  {code: 'ie', description:  'Ireland'},
  {code: 'lb', description:  'Lebanon'},
  {code: 'mt', description:  'Malta'},
  {code: 'nz', description:  'New Zealand'},
  {code: 'ph', description:  'Philippines'},
  {code: 'pt', description:  'Portugal'},
  {code: 'scot', description:  'Scotland'},
  {code: 'sk', description:  'Slovakia'},
  {code: 'es', description:  'Spain'},
  {code: 'lk', description:  'Sri Lanka'},
  {code: 'vn', description:  'Vietnam'},
  {code: 'wal', description:  'Wales'}
].each {|i| Ordo.find_or_create_by_code(i)}

puts "Loading Rank table"
[ {code: 'sol', position: 1, name:  'Solemnity'},
  {code: 'sun', position: 2, name:  'Sunday'},
  {code: 'fst', position: 3, name:  'Feast'},
  {code: 'mem', position: 4, name:  'Memorial'},
  {code: 'opt', position: 5, name:  'Optional Memorial'},
  {code: 'com', position: 6, name:  'Commemoration'},
  {code: 'wd', position: 7, name:  'Weekday'},
  {code: 'na', position: 9, name:  'Not Applicable'}
].each {|i| Rank.find_or_create_by_code(i)}

puts "Loading Season table"
[ {code: 'ord', name:  'Ordinary Time'},
  {code: 'adv', name:  'Advent'},
  {code: 'xmas', name:  'Christmas'},
  {code: 'lent', name:  'Lent'},
  {code: 'hw', name:  'Holy Week'},
  {code: 'easter', name:  'Easter'},
  {code: 'any', name:  'Any Season'},
  {code: 'na', name:  'Not Applicable'}
].each {|i| Season.find_or_create_by_code(i)}







