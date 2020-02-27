class InMemoryGateway
  attr_reader :data

  def initialize(data)
    @data
  end

  def where(params, select=:value, order_by=[], distinct=false)

  end
end