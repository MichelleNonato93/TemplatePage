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

  def procurement
    @contact = Contact.new

    render layout: "modules"
  end

  def vehicle
    @contact = Contact.new

    render layout: "modules"
  end

  def stories
    @contact = Contact.new
    render layout: "modules"
  end

  def management
    @contact = Contact.new
    render layout: "modules"
  end

  def monitoring
    @contact = Contact.new

    render layout: "modules"
  end

end
