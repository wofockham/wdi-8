class ButterfliesController < ApplicationController
  def index
  end

  def new
    redirect_to('/butterflies')
  end

  def faq
    render 'pages/faq'
  end
end