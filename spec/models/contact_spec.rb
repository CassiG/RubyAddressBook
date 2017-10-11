require 'rails_helper'

describe Contact do
  let(:contact) { Contact.create(first_name: "Jane", last_name: "Doe", phone_number: "123-456-7890", email: "email@aol.com", description: "Friend from work") }

  it 'Creates a contact full name' do
    expect(contact.full_name).to eq 'Jane Doe'
  end
end
