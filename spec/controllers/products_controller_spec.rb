require 'rails_helper'
RSpec.describe ProductsController, type: :controller do
  render_views
RSpec.describe ProductsController, type: :controller do
  describe "GET #new" do
    it "atribui um novo Product à variável @product" do
      get :new
      puts assigns(:product).inspect
      expect(assigns(:product)).to be_a_new(Product)
    end
  end
end
