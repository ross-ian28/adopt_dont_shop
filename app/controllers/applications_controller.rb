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
    application = Application.new(application_params)
      if application.save
        redirect_to "/applications/#{application.id}"
      else
        flash[:alert] = "All fields must be filled to submit"
        redirect_to "/applications/new"
      end
  end

  private
    def application_params
      params.permit(
        :name, :street_address, :city, :state, :zipcode, :description, :status
      )
    end
end
