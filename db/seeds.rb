# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

require 'csv'
require 'yaml'


puts "Loading Ordos table"
ordos_file="#{Rails.root}/db/seeds/ordos.yml"
ordos = open(ordos_file)  {|f| YAML.load(f)}
ordos.map do |key,val|
  p key
  Ordo.find_or_create_by val
end

puts "Loading Celebrations table"
celebrations_file="#{Rails.root}/db/seeds/celebrations.yml"
celebrations = open(celebrations_file)  {|f| YAML.load(f)}
celebrations.map do |key,val|
  p key
  Celebration.find_or_create_by val
end



