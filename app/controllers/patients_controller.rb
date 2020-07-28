class PatientsController < ApplicationController
  def index
    @patients = resource_class.find_each
  end

  def import
    if params[:import].present?
      file = params[:import][:file]
      resource_class.import(file)
      redirect_to root_path, notice: 'Patients Data Imported'
    else
      redirect_to root_path, alert: 'Please select a file to import.'
    end
  end

  private

  def resource_class
    Patient
  end
end
