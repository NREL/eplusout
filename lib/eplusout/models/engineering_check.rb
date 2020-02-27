﻿module EPlusOut
  module Models
    EngineeringCheck = Struct.new(:airflow_per_floor_area, :airflow_per_total_capacity, :floor_area_per_total_capacity,
                                  :number_of_people, :outside_air_percent, :total_capacity_per_floor_area)
  end
end