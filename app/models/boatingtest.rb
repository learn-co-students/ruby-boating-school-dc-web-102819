class BoatingTest
    attr_accessor :student , :name , :status, :instructor
#initialize student (object ) 
# boating test name(string)
# instructor (object)
@@all = []
    def initialize(name , status, instructor)
        @name = name 
        @status = status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

# @@all return all  boating tests
end
