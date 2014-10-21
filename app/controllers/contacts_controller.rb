class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.thank_you_email(@contact).deliver
      flash[:success] = "Thank you for submitting your details."
      redirect_to(@contact)
    elsif @contact.errors.added? :email, :taken
      flash[:notice] = "Thank you for registering, your email already exist."
      redirect_to :back
    else
      flash[:error] = "Oh Oh! Unable to submit your details."
      redirect_to :back
    end
  end

  def show
    redirect_to :back
  end

  def destroy
    @contact = Contact.find(contact_params)

    if @contact = Contact.destroy
      flash[:notice] = "Information Destroyed"
    else
      flash[:error] = "Can't delete information"
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :organization, :role, :source)
  end
end
