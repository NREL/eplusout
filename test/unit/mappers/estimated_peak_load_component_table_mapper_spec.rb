require_relative '../../test_helper'

include EPlusOut::Mappers
include EPlusOut::Models

describe EstimatedPeakLoadComponentTableMapper do
  describe "#call" do
    it "returns a mapped EstimatedPeakLoadComponentTable object" do
      component_mapper = EstimatedPeakLoadComponentMapper.new
      mapper = EstimatedPeakLoadComponentTableMapper.new(component_mapper)
      params = ["494.06", "2753.58", "3579.65", "0.00", "0.00", "0.00", "0.00", "0.00", "1065.04", "0.00", "0.00", "", "", "", "", "", "", "", "", "", "", "", "0.00", "", "", "7892.33", "338.07", "0.00", "0.00", "", "", "0.00", "0.00", "", "", "", "", "1678.33", "0.00", "0.00", "2585.34", "0.00", "0.00", "0.00", "0.00", "0.00", "-1144.9", "0.00", "", "0.00", "0.00", "3456.79", "", "0.00", "", "0.00", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "0.00", "547.08", "", "0.00", "0.00", "0.00", "", "", "0.00", "-711.8", "0.00", "0.00", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "-164.8", "1379.21", "2753.58", "3579.65", "0.00", "0.00", "0.00", "0.00", "0.00", "353.20", "0.00", "0.00", "1678.33", "0.00", "0.00", "2585.34", "0.00", "0.00", "0.00", "0.00", "0.00", "-1144.9", "0.00", "0.00", "0.00", "0.00", "11184.37", "12.33", "24.62", "32.01", "0.00", "0.00", "0.00", "0.00", "0.00", "3.16", "0.00", "0.00", "15.01", "0.00", "0.00", "23.12", "0.00", "0.00", "0.00", "0.00", "0.00", "-10.2", "0.00", "0.00", "0.00", "0.00", "", "284.24", "284.24", "284.24", "284.24", "284.24", "", "", "", "320.78", "", "", "284.24", "0.00", "284.24", "320.78", "0.00", "0.00", "320.78", "0.00", "0.00", "284.24", "0.00", "0.00", "0.00", "0.00", "", "4.85", "9.69", "12.59", "0.00", "0.00", "", "", "", "1.10", "", "", "5.90", "", "0.00", "8.06", "", "", "0.00", "", "", "-4.0", "", "", "", "", ""]

      expected = EPlusOut::Models::EstimatedPeakLoadComponentTable.new(nil,
          EstimatedPeakLoadComponent.new(494.06, 2753.58, 3579.65, 0.00, 0.00, 0.00, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(1065.04, 0.00, 0.00, nil, nil, nil, nil, nil),
          EstimatedPeakLoadComponent.new(nil, nil, nil, nil, nil, nil, 0.00, nil),
          EstimatedPeakLoadComponent.new(nil, 7892.33, 338.07, 0.00, 0.00, nil, nil, 0.00),
          EstimatedPeakLoadComponent.new(0.00, nil, nil, nil, nil, 1678.33, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(2585.34, 0.00, 0.00, 0.00, 0.00, 0.00, -1144.9, 0.00),
          EstimatedPeakLoadComponent.new(nil, 0.00, 0.00, 3456.79, nil, 0.00, nil, 0.00),
          EstimatedPeakLoadComponent.new(nil, nil, nil, nil, nil, nil, nil, nil),
          EstimatedPeakLoadComponent.new(nil, nil, nil, nil, nil, nil, nil, nil),
          EstimatedPeakLoadComponent.new(nil, nil, nil, nil, nil, 0.00, 547.08, nil),
          EstimatedPeakLoadComponent.new(0.00, 0.00, 0.00, nil, nil, 0.00, -711.8, 0.00),
          EstimatedPeakLoadComponent.new(0.00, nil, nil, nil, nil, nil, nil, nil),
          EstimatedPeakLoadComponent.new(nil, nil, nil, nil, nil, nil, nil, -164.8),
          EstimatedPeakLoadComponent.new(1379.21, 2753.58, 3579.65, 0.00, 0.00, 0.00, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(353.20, 0.00, 0.00, 1678.33, 0.00, 0.00, 2585.34, 0.00),
          EstimatedPeakLoadComponent.new(0.00, 0.00, 0.00, 0.00, -1144.9, 0.00, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(0.00, 11184.37, 12.33, 24.62, 32.01, 0.00, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(0.00, 0.00, 3.16, 0.00, 0.00, 15.01, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(23.12, 0.00, 0.00, 0.00, 0.00, 0.00, -10.2, 0.00),
          EstimatedPeakLoadComponent.new(0.00, 0.00, 0.00, nil, 284.24, 284.24, 284.24, 284.24),
          EstimatedPeakLoadComponent.new(284.24, nil, nil, nil, 320.78, nil, nil, 284.24),
          EstimatedPeakLoadComponent.new(0.00, 284.24, 320.78, 0.00, 0.00, 320.78, 0.00, 0.00),
          EstimatedPeakLoadComponent.new(284.24, 0.00, 0.00, 0.00, 0.00, nil, 4.85, 9.69),
          EstimatedPeakLoadComponent.new(12.59, 0.00, 0.00, nil, nil, nil, 1.10, nil),
          EstimatedPeakLoadComponent.new(nil, 5.90, nil, 0.00, 8.06, nil, nil, 0.00),
          EstimatedPeakLoadComponent.new(nil, nil, -4.0, nil, nil, nil, nil, nil)
      )

      result = mapper.(params)

      result.must_equal expected
    end
  end
end

