
#
# [class description]
# ProductBuilder is used to build new {Product} object
#
# @author [yihyang]
# @see https://moneysmart.atlassian.net/wiki/spaces/TECH/pages/597164149/System+Overview+and+History Overall architecture view
#
class Financial::ProductFinder
  #
  # Initialize a new {Financial::ProductFinder} object
  # @param id [Integer] [ID used to perform searches]
  #
  # @return [ProductFinder] [Initialized {ProductFinder} object]
  def initialize(id:)
    @id = id
  end

  #
  # [find description]
  # Find the product based on provided id
  #
  # @return [Product] [Product object based on provided id]
  # @raise [ActiveRecord::RecordNotFound] Raises exception when the provided id doesn't exists in all products
  def find
    Product.find(@id)
  end
end
