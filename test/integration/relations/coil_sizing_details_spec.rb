require_relative '../../test_helper'

include EPlusOut::Relations

describe CoilSizingDetails do
  describe "#find_by_name" do
    let(:gateway) {
      ArrayGateway.new(
          [
              {
                  row_name: "Foo Coil",
                  table_name: "Coils",
                  value: ["No", "Yes", "unknown", "0.79403004", "-999.0", "0.804785", "-999.0000", "16.70", "-999.00", "37036.7",
                          "-999.0", "0.00800000", "-999.0", "11.31", "-999.00", "-999.00", "18865.582", "18865.582", "-999.0",
                          "-999.0", "-999.0", "40.00", "-999.00", "60796.0", "-999.0", "0.00800000", "-999.0", "18.84", "-999.00",
                          "-999.00", "Zone Equipment", "1.0000", "-999.0", "-999.00", "18865.58", "-999.00", "18865.58", "-999.00",
                          "Coil:Heating:Electric", "-999.000", "18865.58", "1.00000", "1.00000", "12/21 24:00:00", "12/21 24:00:00",
                          "unknown", "DENVER INTL AP ANN HTG 99.6% CONDNS DB", "DENVER INTL AP ANN HTG 99.6% CONDNS DB", "unknown",
                          "1004.8586", "ADU ZONE EQUIPMENT 1-1 1", "ZONEHVAC:AIRDISTRIBUTIONUNIT", "1019.7116", "No", "-17.40",
                          "0.0000", "0.00099203", "0.00000000", "-17.40", "-999.00", "-999.00", "-999.00", "-999.00", "-999.0000",
                          "-999.0000", "-999.0", """", "0.9866", "0.000", "-999.0", "-999.0", "unknown", "unknown", "21.10",
                          "0.00679331", "N/A", "N/A", "N/A", "-999.0000", "21.10", "0.00679331", "35.8215", "0.00",
                          "ZONE EQUIPMENT 1-1", "15299.42"]
              },
          ]
      )
    }

    it "correctly maps data from the gateway to a CoilSizingDetail" do
      name = "Foo Coil"
      relation = CoilSizingDetails.new(gateway)

      expected = EPlusOut::Models::CoilSizingDetail.new("Foo Coil",
                                                        "No", "Yes", "unknown", 0.79403004, -999.0, 0.804785, -999.0000, 16.70, -999.00, 37036.7,
                                                        -999.0, 0.00800000, -999.0, 11.31, -999.00, -999.00, 18865.582, 18865.582, -999.0,
                                                        -999.0, -999.0, 40.00, -999.00, 60796.0, -999.0, 0.00800000, -999.0, 18.84, -999.00,
                                                        -999.00, "Zone Equipment", 1.0000, -999.0, -999.00, 18865.58, -999.00, 18865.58, -999.00,
                                                        "Coil:Heating:Electric", -999.000, 18865.58, 1.00000, 1.00000, "12/21 24:00:00", "12/21 24:00:00",
                                                        "unknown", "DENVER INTL AP ANN HTG 99.6% CONDNS DB", "DENVER INTL AP ANN HTG 99.6% CONDNS DB", "unknown",
                                                        1004.8586, "ADU ZONE EQUIPMENT 1-1 1", "ZONEHVAC:AIRDISTRIBUTIONUNIT", 1019.7116, "No", -17.40,
                                                        0.0000, 0.00099203, 0.00000000, -17.40, -999.00, -999.00, -999.00, -999.00, -999.0000,
                                                        -999.0000, -999.0, nil, 0.9866, 0.000, -999.0, -999.0, "unknown", "unknown", 21.10,
                                                        0.00679331, "N/A", "N/A", "N/A", -999.0000, 21.10, 0.00679331, 35.8215, 0.00,
                                                        "ZONE EQUIPMENT 1-1", 15299.42
      )

      result = relation.find_by_name(name)
      result.must_equal expected
    end
  end
end
