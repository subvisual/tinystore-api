class StoreWrapper
    attr_accessor :id, :name, :description

    def initialize(attrs = {})
      @id = attrs[:id]
      @name = attrs[:name]
      @description = attrs[:description]
    end
  end
