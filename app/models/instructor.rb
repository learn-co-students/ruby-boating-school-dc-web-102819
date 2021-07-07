class Instructor

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all		
	end

	def find_test(student, test_name)
		#find instance of BoatingTest
		find_test = BoatingTest.all.find do |test|
			test.student == student && test.test_name == test_name 
		end
		#create instance of BoatingTest if if did not alrady exist
		if !find_test
			find_test = BoatingTest.new(student, test_name, "Open", self)
		end
		#return the BoatingTest instance
		find_test
	end

	def pass_student(student, test_name)
		find_test(student, test_name).test_status = "Passed"
	end

	def fail_student(student, test_name)
		find_test(student, test_name).test_status = "Failed"
	end
end
