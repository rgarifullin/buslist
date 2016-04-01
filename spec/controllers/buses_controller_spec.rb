require 'rails_helper'

RSpec.describe BusesController, type: :controller do
  describe 'GET #index' do
    let!(:bus1) { FactoryGirl.create(:bus1) }
    let!(:bus2) { FactoryGirl.create(:bus2) }

    it 'responds successfully with an HTTP 200 status code' do
      get :index

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index

      expect(response).to render_template('index')
    end

    it 'loads all of the news into @buses' do
      get :index

      expect(assigns(:buses)).to match_array([bus1, bus2])
    end

    it 'loads total amount of buses into @total' do
      get :index

      expect(assigns(:total)).to eq(2)
    end
  end

  describe 'GET #new' do
    it 'responds successfully with an HTTP 200 status code' do
      get :new

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the new template' do
      get :new

      expect(response).to render_template('new')
    end
  end

  describe 'GET #edit' do
    let!(:bus1) { FactoryGirl.create(:bus1) }

    it 'responds successfully with an HTTP 200 status code' do
      get :edit, id: bus1

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the edit template' do
      get :edit, id: bus1

      expect(response).to render_template('edit')
    end
  end

  describe 'GET #create' do
    let(:bus2) { FactoryGirl.build(:bus2) }

    it 'redirects to index after successful post' do
      post :create, bus: FactoryGirl.attributes_for(:bus2)

      expect(response).to redirect_to buses_path
    end
  end

  describe 'GET #update' do
    let!(:bus2) { FactoryGirl.create(:bus2) }

    it 'redirects to index after successful patch' do
      put :update, { id: bus2, bus: FactoryGirl.attributes_for(:bus2, name: 'Bus') }

      expect(response).to redirect_to buses_path
    end
  end

  describe 'GET #destroy' do
    let!(:bus2) { FactoryGirl.create(:bus2) }

    it 'redirects back after successful delete' do
      request.env["HTTP_REFERER"] = buses_path
      delete :destroy, id: bus2

      expect(response).to redirect_to buses_path
    end
  end
end
