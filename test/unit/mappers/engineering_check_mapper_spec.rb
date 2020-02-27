require_relative '../../test_helper'

include EPlusOut::Mappers

describe EngineeringCheckMapper do
  describe "#call" do
    it "returns a mapped EngineeringCheck object" do
      mapper = EngineeringCheckMapper.new

      expected = EPlusOut::Models::EngineeringCheck.new(50, 60, 20, 40, 10, 1)

      result = mapper.(["50", "60", "20", "40", "10", "1"])

      result.must_equal expected
    end
  end
end
