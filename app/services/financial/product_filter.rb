class Financial::ProductFilter
  def initialize(params:)
    @params = params
  end

  def filter
    Product.where(@params)
  end
end
