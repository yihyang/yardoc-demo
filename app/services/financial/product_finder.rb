class Financial::ProductFinder
  def initialize(id:)
    @id = id
  end

  def find
    Product.find(@id)
  end
end
