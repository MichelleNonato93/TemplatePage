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

end
