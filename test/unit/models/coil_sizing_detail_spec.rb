require_relative '../../test_helper'

include EPlusOut::Models

describe CoilSizingDetail do
  let(:coil_sizing_detail) {
    coil_sizing_detail = CoilSizingDetail.new
    coil_sizing_detail.moist_air_heat_capacity = 1000
    coil_sizing_detail.standard_air_density_adjusted_for_elevation = 1.2
    coil_sizing_detail.outdoor_air_volume_flow_rate_at_ideal_loads_peak = 0.5
    coil_sizing_detail.outdoor_air_drybulb_at_ideal_loads_peak = 35
    coil_sizing_detail.outdoor_air_humidity_ratio_at_ideal_loads_peak = 0.006
    coil_sizing_detail.zone_air_drybulb_at_ideal_loads_peak = 24
    coil_sizing_detail.zone_air_humidity_ratio_at_ideal_loads_peak = 0.008
    coil_sizing_detail
  }

  describe '#sensible_load' do
    it 'calculates the sensible load correctly' do
      expected_result = 6600

      coil_sizing_detail.sensible_load.must_equal expected_result
    end
  end

  describe "latent_load" do
    it "calculates the latent load correctly" do
      expected_result = -2941.512

      coil_sizing_detail.latent_load.must_be_close_to expected_result
    end
  end

  describe "total_load" do
    it "calculates the total load correctly" do
      expected_result = 3658.488

      coil_sizing_detail.total_load.must_be_close_to expected_result
    end
  end
end
