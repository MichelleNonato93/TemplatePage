class WelcomeController < ApplicationController
  def index
  end

  def templateA
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
    render layout: "modules"
  end

  def moduleVehicle
    render layout: "modules"
  end

  def moduleStories
    render layout: "modules"
  end

  def moduleManagement
    render layout: "modules"
  end

  def moduleMonitoring
    render layout: "modules"
  end

end
