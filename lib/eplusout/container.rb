module EPlusOut
  class Container
    attr_reader :relations

    def self.default_configuration(sql_file)
      container = new

      gateway = Gateways::SqlGateway.new(sql_file)

      container.relations[:coil_sizing_details] = Relations::CoilSizingDetails.new(gateway)
      container.relations[:cooling_peak_conditions] = Relations::CoolingPeakConditions.new(gateway)
      container.relations[:heating_peak_conditions] = Relations::HeatingPeakConditions.new(gateway)
      container.relations[:engineering_check_for_coolings] = Relations::EngineeringCheckForCoolings.new(gateway)
      container.relations[:engineering_check_for_heatings] = Relations::EngineeringCheckForHeatings.new(gateway)
      container.relations[:estimated_cooling_peak_load_component_tables] = Relations::EstimatedCoolingPeakLoadComponentTables.new(gateway)
      container.relations[:estimated_heating_peak_load_component_tables] = Relations::EstimatedHeatingPeakLoadComponentTables.new(gateway)

      container
    end

    def initialize
      @relations = {}
    end
  end
end