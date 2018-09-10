
#
# [class description]
#  ProductBuilder is used to build new {Product} object
#
# @author [yihyang]
#
class Financial::ProductBuilder
  # Default attributes to be merged into product
  DEFAULT_ATTRIBUTES = { product_category: 'financial-product' }.freeze
  #
  # Initialize a new {ProductFilter}.
  # @param params [Hash] [description] Hash object containing information to be used in construction
  # of a new Product object
  #
  # @return [Financial::ProductBuilder] [Initialized ProductBuilder object]
  # @option opts [String] :product_category The category of the product
  def initialize(params:, opts: {})
    @params = params
  end


  #
  # Building the Product model by merging it with default_attributes
  #
  # @return [Product] [{Product} class initialized with params and merged with default attributes]
  def build
    Product.new({
      **DEFAULT_ATTRIBUTES,
      **opts,
      **@params
    })
  end


  #
  # Build a new {ProductFilter} with default attributes
  #
  # @return [Product] [{Product} class with default attributes]
  def self.build_default
    Product.new
  end
end
