class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    p @contacts
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
      redirect_to contacts_path
  end

  def show
  end

  private
    def contact_params
      params.permit(:first_name, :last_name, :phone_number, :email, :description)
    end

end
