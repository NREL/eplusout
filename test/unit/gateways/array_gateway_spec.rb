require_relative '../../test_helper'
require_relative '../../fixtures/array_gateway'

describe ArrayGateway do
  describe "#where" do
    let(:data) {[
        {
            name: "Tim",
            foo: "bar",
            value: ["baz"]
        },
        {
            name: "Tom",
            foo: "bar",
            value: ["boop"]
        },
        {
            name: "Ted",
            foo: "quu",
            value: ["quux"]
        }
    ]}

    it "only returns objects that meet the filter condition" do
      gateway = ArrayGateway.new(data)

      expected = ["baz", "boop"]

      result = gateway.where({foo: "bar"})

      result.must_equal expected
    end

    it "only returns objects that meet the filter condition" do
      gateway = ArrayGateway.new(data)

      expected = ["Tim", "Tom"]

      result = gateway.where({foo: "bar"}, select: :name, distinct: true)

      result.must_equal expected
    end
  end
end