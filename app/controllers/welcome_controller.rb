class WelcomeController < ApplicationController
  def index
  end

  def templateA
    @contact = Contact.new
    render layout: "templatea"
  end

  def templateB
    render layout: "templateb"
  end

  def templateC
    render layout: "templatec"
  end

  def templateD
    render layout: "templated"
  end

  def moduleProcurement
    @contact = Contact.new

    render layout: "modules"
  end

  def moduleVehicle
    @contact = Contact.new

    render layout: "modules"
  end

  def moduleStories
    @contact = Contact.new
    render layout: "modules"
  end

  def moduleManagement
    @contact = Contact.new
    render layout: "modules"
  end

  def moduleMonitoring
    @contact = Contact.new

    render layout: "modules"
  end

end
