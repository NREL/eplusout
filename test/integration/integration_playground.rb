require 'openstudio'
require_relative '../test_helper'

puts OpenStudio::OptionalStringVector.new([]).get

sql_file = OpenStudio::SqlFile.new("/Users/npflaum/Documents/GitHub/eplusout/test/fixtures/peak_load_component_repository.sql")

container = EPlusOut::Container.default_configuration(sql_file)

puts container.relations[:coil_sizing_details].all
puts container.relations[:cooling_peak_conditions].all
puts container.relations[:heating_peak_conditions].all
puts container.relations[:engineering_checks_for_cooling].all
puts container.relations[:engineering_checks_for_heating].all
puts container.relations[:estimated_cooling_peak_load_component_tables].all
puts container.relations[:estimated_heating_peak_load_component_tables].all
