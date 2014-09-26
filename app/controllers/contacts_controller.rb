class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    if @contact.save
      flash[:notice] = "Thank you for Submitting your information!"
    else
      flash[:error] = "Oh Oh! Something's wrong! Try Registering again!"
    end

    redirect_to :back
  end

  def destroy
    @contact = Contact.find(contact_params)

    if @contact = Contact.destroy
      flash[:notice] = "Information Destroyed"
    else
      flash[:notice] = "Can't delete information"
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :organization, :role)
  end

end
