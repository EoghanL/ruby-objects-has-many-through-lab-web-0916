class Doctor

  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment_instance)

    @appointments << appointment_instance if !(@appointments.include?(appointment_instance))
    appointment_instance.doctor = self
    #appointment_instance.patient.doctors << self
    @patients << appointment_instance.patient

  end

end
