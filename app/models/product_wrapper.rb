class ProductWrapper
  attr_accessor :id, :name, :price, :image

  def initialize(attrs = {})
    @id = attrs[:id]
    @name = attrs[:name]
    @price = attrs[:price]
    @image = attrs[:image]
  end
end
