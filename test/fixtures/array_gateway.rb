class ArrayGateway
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def where(params, select: :value, order_by: [], distinct: false)
    matches = @data.select { |x| x.to_h.merge(params) == x.to_h}
    results = matches.reduce([]){ |acc, match,| acc << match[select]}.flatten

    distinct ? results|[] : results
  end
end