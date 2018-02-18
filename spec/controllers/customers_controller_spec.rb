require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe 'GET #index' do
    let!(:customer){FactoryBot.create(:customer, name: 'foo')}

    it 'render the :index view' do
      get :index
      expect(subject).to render_template(:index)
    end

    it 'assigns @customers' do
      get :index 
      expect(assigns(:customers)).to eq([customer])
    end
  end
end
