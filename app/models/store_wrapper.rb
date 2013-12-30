class StoreWrapper
  attr_accessor :id, :name, :description, :products

  def initialize(attrs = {})
    @id = attrs[:id] || attrs["id"]
    @name = attrs[:name] || attrs["name"]
    @description = attrs[:description] || attrs["description"]
  end
end
