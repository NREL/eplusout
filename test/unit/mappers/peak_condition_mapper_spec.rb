require_relative '../../test_helper'

include EPlusOut::Mappers

describe PeakConditionMapper do
  describe "#call" do
    it "returns a mapped PeakConditions object" do
      mapper = PeakConditionMapper.new

      expected = EPlusOut::Models::PeakCondition.new(nil, 438.97, 1702.53, 10911.24, 1.21, 0.00, 34.37, 17.76, 0.22, 0.00591, 11350.21, 13052.74, 14.00, "7/21 15:15:00", 23.33, 0.00845, 47.34)

      result = mapper.(["438.97", "1702.53", "10911.24", "1.21", "0.00", "34.37", "17.76", "0.22", "0.00591", "11350.21", "13052.74", "14.00", "7/21 15:15:00", "23.33", "0.00845", "47.34"])

      result.must_equal expected
    end
  end
end
