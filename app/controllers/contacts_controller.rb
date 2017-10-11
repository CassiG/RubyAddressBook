class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(user_paramsz)
    redirect_to contacts_path
  end

  def show
  end

  private

  def user_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, :description)
  end

end
