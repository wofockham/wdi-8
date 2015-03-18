class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render :text => "blah blah"
  end
end
