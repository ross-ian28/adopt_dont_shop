class PetApplicationsController < ApplicationController
  def create
    PetApplication.find_or_create_by!(application_id: params[:app_id], pet_id: params[:pet_id])
    redirect_to "/applications/#{params[:app_id]}"
  end
end
