% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Assignment
% Task: Main Script
% Date 11/13



function main(gpas)
    % GPA Distribution Histogram
    figure;
    histogram(gpas, 'BinWidth', 0.2);
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Frequency');
end

function plotAvgGpaByMajor(students)
    % Average GPA by Major
    majors = unique({students.Major});
    avgGpas = zeros(1, length(majors));
    
    for i = 1:length(majors)
        majorStudents = students(strcmp({students.Major}, majors{i}));
        avgGpas(i) = mean([majorStudents.GPA]);
    end
    
    figure;
    bar(avgGpas);
    set(gca, 'XTickLabel', majors, 'XTick', 1:length(majors));
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
    xtickangle(45);
end

function plotAgeDistribution(ages)
    % Age Distribution Histogram
    figure;
    histogram(ages, 'BinWidth', 1);
    title('Age Distribution');
    xlabel('Age');
    ylabel('Frequency');
end
