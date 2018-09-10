
#
# [class description]
# ProductFilter is used to build new filter products with provided search_params
#
# @author [yihyang]
# @todo Implement this Financial::ProductFilter#todo feature
#
class Financial::ProductFilter

  #
  # Initialize a new {Financial::ProductFilter} object
  # @param search_params [Hash] [Hash object used to perform searches]
  #
  # @return [ProductFilter] [description]
  def initialize(search_params:)
    @search_params = search_params
  end


  #
  # [filter description] Perform filter on products based on the search_params
  #
  # @return [Product] [Array of products filtered based on search_params ]
  def filter
    Product.where(@search_params)
  end
end
