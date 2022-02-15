class ApplicationsController < ApplicationController
  def index
    @application = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
  end

  def create
    application = Application.new({
      name: params[:name],
      street_address: params[:street_address],
      city: params[:city],
      state: params[:state],
      zipcode: params[:zipcode],
      description: params[:description]
      })

      application.save

      redirect_to "/applications/#{application.id}"
  end
end
