class Doctor
attr_accessor :name, :appointments
@@all = []

  def initialize(name)
    @name = name

    @@all << self
  end
end
