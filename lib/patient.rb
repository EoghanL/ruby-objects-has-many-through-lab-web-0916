class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment_instance)
    @appointments << appointment_instance
    appointment_instance.patient = self
    @doctors << appointment_instance.doctor
  end

end
