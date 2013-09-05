# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

CSV.foreach("db/data", headers: true) do |row|
  town_name = row[0]
  population_over_age_65 = row[3]
  population_under_19 = row[2]
  per_capita_income = row[4].gsub(/[^0-9]/, '').to_i
  percentage_teen_births = row[14]
  infant_mortalities = row[9]
  record = TownHealthRecord.new
  record.town_name = town_name
  record.population_over_age_65 = population_over_age_65.gsub(/,/, '')
  record.population_under_19 = population_under_19
  record.per_capita_income = per_capita_income
  record.percentage_teen_births = percentage_teen_births
  record.infant_mortalities = infant_mortalities
  
  if record.nil?
    record = TownHealthRecord.new
  else
    record
  end

  record.save
end

