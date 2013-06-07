# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Loading Ordo table"
[ {label: 'gen',  description:  'General Calendar'},
   {label: 'usa',  description:  'United States of America'},
   {label: 'usaa', description:  'United States of America Anglican'},
   {label: 'ar',   description:  'Argentina'},
   {label: 'br',   description:  'Brazil'},
   {label: 'au',   description:  'Australia'},
   {label: 'ca',   description:  'Canada'},
   {label: 'cl',   description:  'Chile'},
   {label: 'hr',   description:  'Croatia'},
   {label: 'eng',  description:  'England'},
   {label: 'gr',   description:  'Greece'},
   {label: 'ie',   description:  'Ireland'},
   {label: 'lb',   description:  'Lebanon'},
   {label: 'mt',   description:  'Malta'},
   {label: 'nz',   description:  'New Zealand'},
   {label: 'ph',   description:  'Philippines'},
   {label: 'pt',   description:  'Portugal'},
   {label: 'scot', description:  'Scotland'},
   {label: 'sk',   description:  'Slovakia'},
   {label: 'es',   description:  'Spain'},
   {label: 'lk',   description:  'Sri Lanka'},
   {label: 'vn',   description:  'Vietnam'},
   {label: 'wal',  description:  'Wales'}
].each { |i| o=Ordo.new( i ); o.save }