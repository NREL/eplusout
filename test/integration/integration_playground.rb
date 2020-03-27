require 'openstudio'
require_relative '../test_helper'

puts OpenStudio::OptionalStringVector.new([]).get

sql_file = OpenStudio::SqlFile.new("/Users/npflaum/Documents/GitHub/eplusout/test/fixtures/peak_load_component_repository.sql")

container = EPlusOut.container(sql_file)

puts container[:coil_sizing_details].all
puts container[:cooling_peak_conditions].all
puts container[:heating_peak_conditions].all
puts container[:engineering_check_for_coolings].all
puts container[:engineering_check_for_heatings].all
puts container[:estimated_cooling_peak_load_component_tables].all
puts container[:estimated_heating_peak_load_component_tables].all