class PatientsController < ApplicationController
  get '/patients' do
    redirect_if_not_logged_in
    @patients = Patient.all
    @appointments = Appointment.all
    erb :'patients/index'
  end

  get '/patients/new' do
    redirect_if_not_logged_in
    redirect '/appointments/new'
  end

  get '/patients/:id/edit' do
    redirect_if_not_logged_in
    @patient = Patient.find(params[:id])
    erb :'patients/edit'
  end

  patch '/patients/:id' do
    redirect_if_not_logged_in
    @patient = Patient.find(params[:id])
    @patient.name = params[:name] if !params[:name].empty?
    @patient.age = params[:age] if !params[:age].empty?
    @patient.save


    redirect "patients/#{@patient.id}"
  end

  get '/patients/:id' do
    redirect_if_not_logged_in
    @patient = Patient.find(params[:id])
    @appointments = Appointment.all
    erb :'patients/show'
  end

  delete '/patients/:id/delete' do
    redirect_if_not_logged_in
    @patient = Patient.find(params[:id])
    Appointment.all.each do |appointment|
      if appointment.patient_id == @patient.id
        appointment.delete
      end
    end
    @patient.delete
    redirect '/patients'
  end
end
