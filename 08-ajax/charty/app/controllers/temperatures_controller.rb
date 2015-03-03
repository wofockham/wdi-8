class TemperaturesController < ApplicationController
  def index
    @temperatures = Temperature.all
    render :json => @temperatures
  end

  def max
    @maximums = Temperature.pluck :maximum
    render :json => @maximums
  end

  def min
    @minimums = Temperature.pluck :minimum
    render :json => @minimums
  end
end
