require 'pry'
require_relative './student.rb'
require_relative './instructor.rb'

class BoatingTest

    @@all = []

    attr_reader :student, :name, :instructor
    attr_accessor :status

    def initialize(student,name,status,instructor)
        @student = student
        @name = name
        @status = status
        @instructor = instructor
        @@all.push(self)
    end

    def self.all
        @@all
    end

end