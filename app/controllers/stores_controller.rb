class StoresController < ApplicationController
  def index
    stores = GetsStore.new.all.map{|store_params| store_and_products(store_params)}

    render json: {stores: stores, products: eager_loaded_products(stores)}
  end

  def show
    store = store_and_products(GetsStore.new.find_by_id(params[:id]))

    render json: {store: store, products: eager_loaded_products(store)}
  end

  private

  def store_and_products(store_params)
    store = StoreWrapper.new(store_params)
    store.products = product_ids_for_store(store.id)
    store
  end

  def product_ids_for_store(store_id)
    GetsProducts.new(store_id: store_id).all.map{|products_params| products_params[:id]}
  end

  def products_for_store(store_id)
    GetsProducts.new(store_id: store_id).all.map{|products_params| ProductWrapper.new(products_params)}
  end

  def eager_loaded_products(stores)
    stores = [stores] unless stores.is_a? Array
    GetsProducts.new.all.select{|product| stores.map(&:id).include?(product[:store_id])}.map{|product_params| ProductWrapper.new(product_params)}
  end
end
