# code here!

class School
    attr_accessor :school, :roster, :length

    def initialize(school)
        @school = school
        @roster = {} 
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << "#{student}"
    end

    def grade(grade)
        roster.detect do |yes, st|
            if yes == grade
                return st
            end
        end
    end

    def sort
        sorted = {}
        roster.each do |grade, st|
            sorted[grade] = st.sort
        end
        sorted
    end

end