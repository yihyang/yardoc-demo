class Financial::ProductBuilder
  DEFAULT_ATTRIBUTES = { product_category: 'financial-product' }.freeze

  def initialize(params:)
    @params = params
  end

  def build
    Product.new(@params).merge(DEFAULT_ATTRIBUTES)
  end
end
