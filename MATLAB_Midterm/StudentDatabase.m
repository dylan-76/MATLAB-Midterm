% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Assignment
% Task: Database Management
% Date 11/13
classdef StudentDatabase
    properties
        Students = [];  % Array to hold Student objects
    end
    
    methods
        % Add a student to the database
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students, student];
        end
        
        % Find student by ID
        function student = findStudentByID(obj, ID)
            student = [];
            for i = 1:length(obj.Students)
                if obj.Students(i).ID == ID
                    student = obj.Students(i);
                    return;
                end
            end
        end
        
        % Get list of students by major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students(i).Major, major)
                    studentsByMajor = [studentsByMajor, obj.Students(i)];
                end
            end
        end
        
        % Save database to a .mat file
        function saveToFile(obj, filename)
            try
                save(filename, 'obj');
                fprintf('Database saved to %s\n', filename);
            catch
                fprintf('Error saving database to file.\n');
            end
        end
        
        % Load database from a .mat file
        function obj = loadFromFile(obj, filename)
            try
                loadedData = load(filename);
                obj = loadedData.obj;
                fprintf('Database loaded from %s\n', filename);
            catch
                fprintf('Error loading database from file.\n');
            end
        end
    end
end