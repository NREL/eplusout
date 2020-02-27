module EPlusOut


  class Container


    attr_reader :relations
    def self.default_configuration(sql_file)
      include EPlusOut::Gateways
      include EPlusOut::Mappers
      include EPlusOut::Relations

      container = new

      gateway = SqlGateway.new(sql_file)

      container.relations[:coil_sizing_details] = CoilSizingDetails.new(gateway)
      container.relations[:cooling_peak_conditions] = CoolingPeakConditions.new(gateway)
      container.relations[:heating_peak_conditions] = HeatingPeakConditions.new(gateway)
      container.relations[:engineering_checks_for_cooling] = EngineeringCheckForCoolings.new(gateway)
      container.relations[:engineering_checks_for_heating] = EngineeringCheckForHeatings.new(gateway)
      container.relations[:estimated_cooling_peak_load_component_tables] = EstimatedCoolingPeakLoadComponentTables.new(gateway)
      container.relations[:estimated_heating_peak_load_component_tables] = EstimatedHeatingPeakLoadComponentTables.new(gateway)

      container
    end

    def initialize
      @relations = {}
    end
  end
end