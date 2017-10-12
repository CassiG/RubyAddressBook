require 'rails_helper'

describe Contact do
  let(:good_contact) { Contact.create(first_name: "Jane", last_name: "Doe", phone_number: "123-456-7890", email: "email@aol.com", description: "Friend from work") }
  # let(:bad_contact) { Contact.create(first_name: nil, last_name: nil, phone_number: nil, email: "email@aol.com", description: "Friend from work") }

  it 'Is not valid without a name, phone or email' do
    expect(bad_contact).to_not be_valid
  end

  it 'Creates a contact full name' do
    expect(good_contact.full_name).to eq 'Jane Doe'
  end
end
