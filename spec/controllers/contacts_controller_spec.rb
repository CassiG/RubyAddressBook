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

  describe 'GET#new' do
    before(:each) { get :new }

    it 'responds with a status code of 200' do
      expect(response.status).to eq(200)
    end

    it 'renders a new form' do
      expect(response).to render_template('new');
    end
  end

  describe 'POST#create' do
    context "with valid attributes" do
      it 'saves a new contact in the database' do
        expect { post :create, {:contact => {first_name: "Jane", last_name: "Doe", phone_number: 1234567890, email: "email@email.com"}}}
      end

      it 'redirects to the homepage' do

      end
    end

    context "without valid attributes" do
      it 'does not save a new contact in the database' do

      end

      it 're-renders the :new template' do

      end
    end
  end
end
