require_relative '../../test_helper'

include EPlusOut::Gateways

describe SqlGateway do
  describe "#build_query" do
    it "returns the correct SQL statement when one parameter is passed" do
      gateway = SqlGateway.new(nil)
      expected_query = "SELECT Value FROM TabularDataWithStrings WHERE TableName = 'example'"

      result = gateway.build_query({:table_name => "example"})

      result.must_equal expected_query
    end

    it "returns the correct SQL statement when multiple parameters are passed" do
      gateway = SqlGateway.new(nil)
      expected_query = "SELECT Value FROM TabularDataWithStrings WHERE TableName = 'example' AND RowName = 'test'"

      result =  gateway.build_query({:table_name => "example", :row_name => "test"})

      result.must_equal expected_query
    end

    it "returns the correct SQL statement when a select argument is passed" do
      gateway = SqlGateway.new(nil)
      expected_query = "SELECT ColumnName FROM TabularDataWithStrings WHERE TableName = 'example'"

      result = gateway.build_query({:table_name => "example"}, select: :column_name)

      result.must_equal expected_query
    end

    it "returns the correct SQL statement when order_by arguments are passed" do
      gateway = SqlGateway.new(nil)
      expected_query = "SELECT Value FROM TabularDataWithStrings WHERE TableName = 'example' ORDER BY ColumnName, RowName ASC"

      result = gateway.build_query({:table_name => "example"}, order_by: [:column_name, :row_name])

      result.must_equal expected_query
    end

    it "returns the correct SQL statement when distinct is set to true" do
      gateway = SqlGateway.new(nil)
      expected_query = "SELECT DISTINCT Value FROM TabularDataWithStrings WHERE TableName = 'example'"

      result = gateway.build_query({:table_name => "example"}, distinct: true)

      result.must_equal expected_query
    end
  end
end