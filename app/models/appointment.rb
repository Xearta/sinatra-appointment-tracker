class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient

  def self.valid_params?(params)
    return !params[:appointment][:patient_id].empty?
  end
end
