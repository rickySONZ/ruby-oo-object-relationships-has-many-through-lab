class Doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def name 
        @name
    end

    def self.all
        @@all
    end
    
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|apt| apt.doctor == self}
    end

    def patients
        appointments.map do |apt|
          apt.patient
        end
      end



end
