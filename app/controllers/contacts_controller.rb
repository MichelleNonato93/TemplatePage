class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
    if @contact.save
      ContactMailer.thank_you_email(@contact).deliver
      format.html { redirect_to(@contact) }
      format.xml  { render :xml => @contact }
      flash[:notice] = "Thank you for submitting your details."
    else
      format.html { redirect_to :back }
      flash[:error] = "Oh Oh! Unable to submit your details."
      end
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
      flash[:notice] = "Can't delete information"
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :organization, :role, :source)
  end
end
