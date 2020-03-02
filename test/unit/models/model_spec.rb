require_relative '../../test_helper'

include EPlusOut::Models

describe Model do

  Foo = Struct.new(:bar, :baz) do
    include Model
  end

  describe "#to_json" do
    it "translates a model object to json" do
      foo = Foo.new("quu", "quux")

      expected = '{"bar":"quu","baz":"quux"}'

      result = foo.to_json

      result.must_equal expected
    end
  end
end
