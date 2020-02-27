module EPlusOut
  module Mappers
    class CoilSizingDetailMapper < EPlusOut::Mappers::Mapper

      PARAM_MAP = [
          {:index => 0, :name => :autosized_coil_airflow, :type => 'string'},
          {:index => 1, :name => :autosized_coil_capacity, :type => 'string'},
          {:index => 2, :name => :autosized_coil_water_flow, :type => 'string'},
          {:index => 3, :name => :coil_air_mass_flow_rate_at_ideal_loads_peak, :type => 'double'},
          {:index => 4, :name => :coil_air_mass_flow_rate_at_rating_conditions, :type => 'double'},
          {:index => 5, :name => :coil_air_volume_flow_rate_at_ideal_loads_peak, :type => 'double'},
          {:index => 6, :name => :coil_capacity_percentage_of_plant_design_capacity, :type => 'double'},
          {:index => 7, :name => :coil_entering_air_drybulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 8, :name => :coil_entering_air_drybulb_at_rating_conditions, :type => 'double'},
          {:index => 9, :name => :coil_entering_air_enthalpy_at_ideal_loads_peak, :type => 'double'},
          {:index => 10, :name => :coil_entering_air_enthalpy_at_rating_conditions, :type => 'double'},
          {:index => 11, :name => :coil_entering_air_humidity_ratio_at_ideal_loads_peak, :type => 'double'},
          {:index => 12, :name => :coil_entering_air_humidity_ratio_at_rating_conditions, :type => 'double'},
          {:index => 13, :name => :coil_entering_air_wetbulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 14, :name => :coil_entering_air_wetbulb_at_rating_conditions, :type => 'double'},
          {:index => 15, :name => :coil_entering_plant_fluid_temperature_at_ideal_loads_peak, :type => 'double'},
          {:index => 16, :name => :coil_final_gross_sensible_capacity, :type => 'double'},
          {:index => 17, :name => :coil_final_gross_total_capacity, :type => 'double'},
          {:index => 18, :name => :coil_final_reference_air_volume_flow_rate, :type => 'double'},
          {:index => 19, :name => :coil_final_reference_plant_fluid_volume_flow_rate, :type => 'double'},
          {:index => 20, :name => :coil_fluid_flow_rate_percentage_of_plant_design_flow_rate, :type => 'double'},
          {:index => 21, :name => :coil_leaving_air_drybulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 22, :name => :coil_leaving_air_drybulb_at_rating_conditions, :type => 'double'},
          {:index => 23, :name => :coil_leaving_air_enthalpy_at_ideal_loads_peak, :type => 'double'},
          {:index => 24, :name => :coil_leaving_air_enthalpy_at_rating_conditions, :type => 'double'},
          {:index => 25, :name => :coil_leaving_air_humidity_ratio_at_ideal_loads_peak, :type => 'double'},
          {:index => 26, :name => :coil_leaving_air_humidity_ratio_at_rating_conditions, :type => 'double'},
          {:index => 27, :name => :coil_leaving_air_wetbulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 28, :name => :coil_leaving_air_wetbulb_at_rating_conditions, :type => 'double'},
          {:index => 29, :name => :coil_leaving_plant_fluid_temperature_at_ideal_loads_peak, :type => 'double'},
          {:index => 30, :name => :coil_location, :type => 'string'},
          {:index => 31, :name => :coil_off_rating_capacity_modifier_at_ideal_loads_peak, :type => 'double'},
          {:index => 32, :name => :coil_plant_fluid_mass_flow_rate_at_ideal_loads_peak, :type => 'double'},
          {:index => 33, :name => :coil_plant_fluid_temperature_difference_at_ideal_loads_peak, :type => 'double'},
          {:index => 34, :name => :coil_sensible_capacity_at_ideal_loads_peak, :type => 'double'},
          {:index => 35, :name => :coil_sensible_capacity_at_rating_conditions, :type => 'double'},
          {:index => 36, :name => :coil_total_capacity_at_ideal_loads_peak, :type => 'double'},
          {:index => 37, :name => :coil_total_capacity_at_rating_conditions, :type => 'double'},
          {:index => 38, :name => :coil_type, :type => 'string'},
          {:index => 39, :name => :coil_u_value_times_area_value, :type => 'double'},
          {:index => 40, :name => :coil_and_fan_net_total_capacity_at_ideal_loads_peak, :type => 'double'},
          {:index => 41, :name => :dx_coil_capacity_decrease_ratio_from_too_high_flow_capacity_ratio, :type => 'double'},
          {:index => 42, :name => :dx_coil_capacity_increase_ratio_from_too_low_flow_capacity_ratio, :type => 'double'},
          {:index => 43, :name => :date_time_at_air_flow_ideal_loads_peak, :type => 'string'},
          {:index => 44, :name => :date_time_at_sensible_ideal_loads_peak, :type => 'string'},
          {:index => 45, :name => :date_time_at_total_ideal_loads_peak, :type => 'string'},
          {:index => 46, :name => :design_day_name_at_air_flow_ideal_loads_peak, :type => 'string'},
          {:index => 47, :name => :design_day_name_at_sensible_ideal_loads_peak, :type => 'string'},
          {:index => 48, :name => :design_day_name_at_total_ideal_loads_peak, :type => 'string'},
          {:index => 49, :name => :dry_air_heat_capacity, :type => 'double'},
          {:index => 50, :name => :hvac_name, :type => 'string'},
          {:index => 51, :name => :hvac_type, :type => 'string'},
          {:index => 52, :name => :moist_air_heat_capacity, :type => 'double'},
          {:index => 53, :name => :oa_pretreated_prior_to_coil_inlet, :type => 'string'},
          {:index => 54, :name => :outdoor_air_drybulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 55, :name => :outdoor_air_flow_percentage_at_ideal_loads_peak, :type => 'double'},
          {:index => 56, :name => :outdoor_air_humidity_ratio_at_ideal_loads_peak, :type => 'double'},
          {:index => 57, :name => :outdoor_air_volume_flow_rate_at_ideal_loads_peak, :type => 'double'},
          {:index => 58, :name => :outdoor_air_wetbulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 59, :name => :plant_design_capacity, :type => 'double'},
          {:index => 60, :name => :plant_design_fluid_return_temperature, :type => 'double'},
          {:index => 61, :name => :plant_design_fluid_supply_temperature, :type => 'double'},
          {:index => 62, :name => :plant_design_fluid_temperature_difference, :type => 'double'},
          {:index => 63, :name => :plant_fluid_density, :type => 'double'},
          {:index => 64, :name => :plant_fluid_specific_heat_capacity, :type => 'double'},
          {:index => 65, :name => :plant_maximum_fluid_mass_flow_rate, :type => 'double'},
          {:index => 66, :name => :plant_name_for_coil, :type => 'string'},
          {:index => 67, :name => :standard_air_density_adjusted_for_elevation, :type => 'double'},
          {:index => 68, :name => :supply_fan_air_heat_gain_at_ideal_loads_peak, :type => 'double'},
          {:index => 69, :name => :supply_fan_maximum_air_mass_flow_rate, :type => 'double'},
          {:index => 70, :name => :supply_fan_maximum_air_volume_flow_rate, :type => 'double'},
          {:index => 71, :name => :supply_fan_name_for_coil, :type => 'string'},
          {:index => 72, :name => :supply_fan_type_for_coil, :type => 'string'},
          {:index => 73, :name => :system_return_air_drybulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 74, :name => :system_return_air_humidity_ratio_at_ideal_loads_peak, :type => 'double'},
          {:index => 75, :name => :system_sizing_method_air_flow, :type => 'string'},
          {:index => 76, :name => :system_sizing_method_capacity, :type => 'string'},
          {:index => 77, :name => :system_sizing_method_concurrence, :type => 'string'},
          {:index => 78, :name => :terminal_unit_reheat_coil_multiplier, :type => 'double'},
          {:index => 79, :name => :zone_air_drybulb_at_ideal_loads_peak, :type => 'double'},
          {:index => 80, :name => :zone_air_humidity_ratio_at_ideal_loads_peak, :type => 'double'},
          {:index => 81, :name => :zone_air_relative_humidity_at_ideal_loads_peak, :type => 'double'},
          {:index => 82, :name => :zone_latent_heat_gain_at_ideal_loads_peak, :type => 'double'},
          {:index => 83, :name => :zone_names, :type => 'string'},
          {:index => 84, :name => :zone_sensible_heat_gain_at_ideal_loads_peak, :type => 'double'}
      ]

      private
      def klass
        EPlusOut::Models::CoilSizingDetail
      end

      def param_map
        PARAM_MAP
      end
    end
  end
end