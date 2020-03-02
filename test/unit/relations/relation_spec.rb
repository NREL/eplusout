require_relative '../../test_helper'

include EPlusOut::Relations

describe Relation do
  BarModel = Struct.new(:name, :value)

  class BarMapper
    def call(data)
      bar = BarModel.new()
      bar[:value] = data[0]
      bar
    end
  end

  class Bar < Relation
    def initialize(gateway, mapper = BarMapper)
      super(gateway, mapper)
    end

    def name_field
      :name
    end

    def clauses
      {
          foo: "bar"
      }
    end

    def order_by
      [:quuz]
    end
  end

  let(:gateway) {
    ArrayGateway.new(
        [
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
        ]
    )
  }

  let(:mapper) {BarMapper.new}
  describe "#name_field" do
    it "raises an error if subclass doesn't define the name_field" do
      assert_raises NotImplementedError do
        Relation.new(nil, nil).name_field
      end
    end
  end

  describe "#find_by_name" do
    it "fetches data mapping it to an object and appending the name to it" do
      name = "Tim"
      relation = Bar.new(gateway, mapper)

      expected = BarModel.new("Tim", "baz")
      result = relation.find_by_name(name)

      result.must_equal expected
    end
  end

  describe "#all" do
    it "returns all objects that meet the relation clause" do
      relation = Bar.new(gateway, mapper)

      expected = [BarModel.new("Tim", "baz"), BarModel.new("Tom", "boop")]
      result = relation.all

      result.must_equal expected
    end
  end
end