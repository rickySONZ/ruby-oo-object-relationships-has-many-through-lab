class Appointment

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def date
        @date
    end

    def self.all
        @@all
    end

    def doctor
        @doctor
    end

    def patient
        @patient
    end

   
    

end
