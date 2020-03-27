require_relative '../../test_helper'

include EPlusOut::Models

describe EstimatedPeakLoadComponent do
  describe "#add_load" do
    it "adds the load values of another EstimatedPeakLoadComponent" do
      original = EstimatedPeakLoadComponent.new(30, 100, 10, 5, 10, 20, 145, 14.5)
      added_load = EstimatedPeakLoadComponent.new(20, 10, 5, 10, 15, 40, 75, 15)

      expected = EstimatedPeakLoadComponent.new(30, 110, 10, 15, 25, 60, 210, 21)

      original.add_load(added_load)

      original.must_equal expected
    end
  end

  describe "#update_percent_grand_total" do
    it "calculates a new percent grand total" do
      peak_load = EstimatedPeakLoadComponent.new(30, 100, 10, 5, 10, 20, 145, 14.5)
      new_grand_total = 1000
      expected = 145 / 1000

      peak_load.update_percent_grand_total(new_grand_total)

      result = peak_load.percent_grand_total
      result.must_equal expected
    end
  end
end