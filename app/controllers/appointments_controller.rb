class AppointmentsController < ApplicationController
  get '/appointments' do
    redirect_if_not_logged_in
    @appointments = Appointment.all
    erb :'appointments/index'
  end

  get '/appointments/new' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @patients = Patient.all
    @appointments = Appointment.all
    erb :'appointments/new'
  end

  get '/appointments/:id/edit' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @appointment = Appointment.find(params[:id])
    @patients = Patient.all
    erb :'appointments/edit'
  end

  patch '/appointments/:id' do
    ####### bug fix
    if !params[:appointment].keys.include?("user_id")
      params[:appointment]["user_id"] = current_user.id
    end
    #######
    dt = DateTime.parse(params[:appointment][:date] + " " + params[:appointment][:time])

    @appointment = Appointment.find(params[:id])
    if current_user.id == @appointment[:user_id]
      if !params[:appointment][:patient][:name].empty?
        @appointment.patient = Patient.find_or_create_by(params[:appointment][:patient])
      else
        @appointment.patient_id = params[:appointment][:patient_id]
      end
      @appointment.appointment_date = dt
      @appointment.save
      redirect "appointments/#{@appointment.id}"
    else
      redirect "/appointments?error=You cannot edit someone elses appointment"
    end
  end


  get '/appointments/:id' do
    redirect_if_not_logged_in
    @appointment = Appointment.find(params[:id])
    @patient = Patient.find(@appointment.patient_id)
    erb :'appointments/show'
  end

  post '/appointments' do
    redirect_if_not_logged_in
    dt = DateTime.parse(params[:appointment][:date] + " " + params[:appointment][:time])

    params[:appointment][:user_id] = current_user.id

    @appointment = Appointment.create(user_id: params[:appointment][:user_id])
    if !params[:appointment][:patient][:name].empty?
      @appointment.patient = Patient.find_or_create_by(params[:appointment][:patient])
    else
      @appointment.patient_id = params[:appointment][:patient_id]
    end
    @appointment.appointment_date = dt

    @appointment.save
    # TODO: FIX ME!
    # unless Appointment.valid_params?(params)
    #   redirect "/patient/new?error=invalid patient"
    # end
    redirect '/appointments'
  end

  delete '/appointments/:id/delete' do
    redirect_if_not_logged_in
    @appointment = Appointment.find(params[:id])
    if current_user.id == @appointment[:user_id]
      @appointment.delete
      redirect '/appointments'
    else
      redirect "/appointments?error=You cannot delete someone elses appointment"
    end
  end
end
