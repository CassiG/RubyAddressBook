require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET#index' do
    before(:each) { get :index }

    it 'responds with a status code of 200' do
      expect(response.status).to eq(200)
    end

    it 'shows a list of all contacts with an @contacts' do
      expect(assigns[:contacts]).to eq(Contact.all)
    end

    it 'renders the index template' do
      expect(response).to render_template('index');
    end

  end
end
