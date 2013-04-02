# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



[ {code: 'green', name:  'Green'}, 
  {code: 'violet', name:  'Violet'}, 
  {code: 'white', name:  'White'},
  {code: 'red', name:  'Red'}, 
  {code: 'black', name:  'Black'}
].each {|i| Color.find_or_create_by_code(i)}

[ {code: 'none', name:  ' '}, 
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

[ {label: 'gen', description:  'General Calendar'}, 
  {label: 'usa', description:  'United States of America'},
  {label: 'usaa', description:  'United States of America Anglican'}, 
  {label: 'ar', description:  'Argentina'}, 
  {label: 'br', description:  'Brazil'}, 
  {label: 'au', description:  'Australia'},
  {label: 'ca', description:  'Canada'},
  {label: 'cl', description:  'Chile'}, 
  {label: 'hr', description:  'Croatia'}, 
  {label: 'eng', description:  'England'},
  {label: 'gr', description:  'Greece'},
  {label: 'ie', description:  'Ireland'}, 
  {label: 'lb', description:  'Lebanon'}, 
  {label: 'mt', description:  'Malta'},
  {label: 'nz', description:  'New Zealand'},
  {label: 'ph', description:  'Philippines'}, 
  {label: 'pt', description:  'Portugal'}, 
  {label: 'scot', description:  'Scotland'},
  {label: 'sk', description:  'Slovakia'},
  {label: 'es', description:  'Spain'}, 
  {label: 'lk', description:  'Sri Lanka'}, 
  {label: 'vn', description:  'Vietnam'},
  {label: 'wal', description:  'Wales'}
].each {|i| Ordo.find_or_create_by_label(i)}

[ {code: 'sol', position: 1, name:  'Solemnity'}, 
  {code: 'sun', position: 2, name:  'Sunday'}, 
  {code: 'fst', position: 3, name:  'Feast'},
  {code: 'mem', position: 4, name:  'Memorial'}, 
  {code: 'opt', position: 5, name:  'Optional Memorial'}, 
  {code: 'com', position: 6, name:  'Commemoration'}, 
  {code: 'wd', position: 7, name:  'Weekday'},
  {code: 'na', position: 9, name:  'Not Applicable'}
].each {|i| Rank.find_or_create_by_code(i)}

[ {code: 'ord', name:  'Ordinary Time'}, 
  {code: 'adv', name:  'Advent'}, 
  {code: 'xmas', name:  'Christmas'},
  {code: 'lent', name:  'Lent'}, 
  {code: 'hw', name:  'Holy Week'}, 
  {code: 'east', name:  'Easter'}, 
  {code: 'any', name:  'Any Season'},
  {code: 'na', name:  'Not Applicable'}
].each {|i| Season.find_or_create_by_code(i)}

