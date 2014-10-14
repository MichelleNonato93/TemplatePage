class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
    if @contact.save
      ContactMailer.thank_you_email(@contact).deliver
      format.html { redirect_to(@contact, :notice => 'User was successfully created.') }
      format.xml  { render :xml => @contact, :status => :created, :location => @contact }
    else
      format.html { redirect_to :back }
      format.xml  { render :xml =>@contact.errors, :status => :unprocessable_entity }
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
