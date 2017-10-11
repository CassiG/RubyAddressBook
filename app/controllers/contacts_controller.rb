class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params[:contact])
    redirect_to contacts_path
  end

  def show
  end

end
