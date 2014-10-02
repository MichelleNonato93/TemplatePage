class WelcomeController < ApplicationController
  def index
  end

  def template_A
    @contact = Contact.new
    render layout: "template_a"
  end

  def template_B
    render layout: "template_b"
  end

  def template_C
    render layout: "template_c"
  end

  def template_D
    render layout: "template_d"
  end

  def Procurement
    @contact = Contact.new

    render layout: "modules"
  end

  def Vehicle
    @contact = Contact.new

    render layout: "modules"
  end

  def Stories
    @contact = Contact.new
    render layout: "modules"
  end

  def Management
    @contact = Contact.new
    render layout: "modules"
  end

  def Monitoring
    @contact = Contact.new

    render layout: "modules"
  end

end
