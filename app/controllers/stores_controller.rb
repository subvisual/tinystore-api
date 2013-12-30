class StoresController < ApplicationController
  def index
    @stores = GetsStore.new.all.map{|store_params| StoreWrapper.new(store_params)}
    render json: @stores, root: "tinystores"
  end
end
