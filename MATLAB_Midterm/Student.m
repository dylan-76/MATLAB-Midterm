% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Assignment
% Task: Student Class
% Date 11/13

classdef Student
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
        % Constructor to initialize the student
        function obj = Student(ID, Name, Age, GPA, Major)
            if nargin > 0
                obj.ID = ID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        % Method to display student information
        function displayInfo(obj)
            fprintf('ID: %d\n', obj.ID);
            fprintf('Name: %s\n', obj.Name);
            fprintf('Age: %d\n', obj.Age);
            fprintf('GPA: %.2f\n', obj.GPA);
            fprintf('Major: %s\n', obj.Major);
        end
        
        % Method to update GPA
        function obj = updateGPA(obj, newGPA)
            if newGPA >= 0 && newGPA <= 4.0
                obj.GPA = newGPA;
            else
                fprintf('Invalid GPA. It should be between 0.0 and 4.0.\n');
            end
        end
    end
end