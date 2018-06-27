class Doctor
attr_accessor :name, :appointments
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointments.all.select{|app| app.doctor == self}
  end

  def patients
    appointments.map{|app| app.patient}
  end
end
