require_relative '../../test_helper'

include EPlusOut::Relations

describe Relation do
  describe "#name_field" do
    it "raises an error if subclass doesn't define the name_field" do
      assert_raises NotImplementedError do
        Relation.new(nil, nil).name_field
      end
    end
  end

  describe "#find_by_name" do
    before do
      class Foo < Relation
        def name_field
          :bar
        end

        def clauses
          {
              baz: "qux"
          }
        end

        def order_by
          [:quuz]
        end
      end
    end

    it "fetches data from the gateway and calls the mapper" do
      gateway = Mock.new
      mapper = Mock.new
      name = "fred"
      relation = Foo.new(gateway, mapper)

      gateway.expect :where, [], [relation.clauses_with_name(name), order_by: relation.order_by, distinct:false]
      mapper.expect :call, nil, [[]]
      relation.find_by_name(name)

      assert gateway.verify
      assert mapper.verify
    end
  end

  describe "#all" do
    before do
      class Foo < Relation
        def name_field
          :bar
        end
      end
    end

    it "gets the unique names from the gateway and calls find_by_name" do
      gateway = Mock.new
      mapper = Mock.new
      names = ["fred", "james"]
      relation = Foo.new(gateway, mapper)

      gateway.expect :where, names, [relation.clauses, select: relation.name_field, order_by: relation.order_by, distinct:true]

      relation.stub :find_by_name, Object.new do
        result = relation.all
        result.size.must_equal 2
        assert gateway.verify
      end
    end
  end
end