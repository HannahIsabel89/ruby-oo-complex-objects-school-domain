# code here!
class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    # hash is contain keys of grade levels. The value of each key will be an array of student names.
    def add_student(name, grade)
     roster[grade] ||= []   # we first need to create the new key and point it to an empty array.    conditional assignment operator
     roster[grade] << name
    end

     #part four A method, grade, should take in an argument of a grade and return all of the students in that grade
    def grade(grade)
        roster[grade]
    end

    #part 5 You should be able to get a sorted list of all the students where the strings in the student arrays are sorted alphabetically.

    def sort
        sorted_names = {}
        roster.each do |grade, students|
            sorted_names[grade] = students.sort
        end
        sorted_names
    end
end
school = School.new("Bayside High School")
 