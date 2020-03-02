require_relative '../../test_helper'

describe EPlusOut::Mappers::Mapper do

  Foo = Struct.new(:bar, :baz)

  class FooMapper < EPlusOut::Mappers::Mapper
    PARAM_MAP = [
        {:index => 0, :name => :bar, :type => 'string'},
        {:index => 1, :name => :baz, :type => 'double'}
    ]

    def klass
      Foo
    end

    def param_map
      PARAM_MAP
    end
  end

  describe "#klass" do
    it "must raise a NotImplementedError" do
      mapper = EPlusOut::Mappers::Mapper.new
      assert_raises NotImplementedError do
        mapper.klass
      end
    end
  end

  describe "#param_map" do
    it "must raise a NotImplementedError" do
      mapper = EPlusOut::Mappers::Mapper.new
      assert_raises NotImplementedError do
        mapper.param_map
      end
    end
  end

  describe "#call" do
    it "maps data to a new instance of the klass" do
      mapper = FooMapper.new()

      expected = Foo.new("A", 1)
      result = mapper.(["A", "1"])

      result.must_equal expected
    end
  end
end
