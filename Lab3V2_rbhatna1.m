%{
    Student name: Rishi Bhatnagar
    Student CCID: rbhatna1
    Own contribution (%) 100
    Other contribution (%) 0 
	
    Copyright (c) 2020, Dileepan Joseph
    All rights reserved.
	
	To avoid plagiarism, list the names of persons, whose code, ideas, 
    images, or data are used in any derivative work. To avoid cheating, 
    list the names of persons, other than your course or lab instructor 
    who provided compositional assistance.  

    After each name, including the student's, enter in parentheses an 
    estimate of the person's contributions in percent. Without these 
    numbers, which add to 100%, follow-up questions will be asked.
 
    For an unknown person, e.g., an anonymous online source that should 
    be avoided, enter a code name in uppercase, e.g., SAURON, and 
    email the lab instructor prior to submission with 
    the corresponding URL.

%}

clear; %deletes all the saved variables
clc; %clears the Command Window

disp('Version 1')
%------------Students edit/write their code here--------------------------%
%------------Remove any code that is unnecessary--------------------------%

%Psuedo code for Version 1

%Creating a vector(monthly_saving) which would store total savings.
%Saving the 1st month's savings, monthly interest rate, montly contribution 
%to a variable
%Creating vector which would store each year's tuition until 22 years for
%arts, science and engineeing
%Saving the 1st year's tuition for arts, science, engineering

%1st for loop
%Using formula and storing the net amount after monthly contribution and 
% compounding the previous total saving into a vector

%2nd for loop
%Creating a for loop until 22 as saving the tuition fees for 22 years into
%a vector for each displine

%Saving the total tuition fees for each displine for 4 years in the last 4
%years(19th, 20th, 21st, 22nd year) in a variable

%Displaying the total tuition fees on the command window. 

%Plotting a graph on command window and assigning title, xlabel, ylabel and
%legend


monthly_saving = zeros(1,216); %Empty vector (Used to store total savings)
monthly_saving(1) = 2000; %Storing initial deposit into the vector
monthly_interest= (6.25/12)/100; %Saving monthly interest rate to variable
monthly_contribution=200; %Saving monthly contribution to variable

Science_cost=zeros(1,22); %Empty vector(later used to store tuition fees for each year) 
Eng_cost=zeros(1,22); %Empty vector(later used to store tuition fees for each year)
Arts_cost=zeros(1,22); %Empty vector(later used to store tuition fees for each year)

Science_cost(1)=6150; %Storing 1st year tution for science into a vector
Eng_cost(1)=6550; %Storing 1st year tution for engineering into a vector
Arts_cost(1)=5550; %Storing 1st year tution for arts into a vector


% for loop going from 2 to 216(months in 18 years), and using formula to
% store the the total amount saved until that month in a vector

for i = 2:216 %Creating a for loop(Purpose above and in pseudo code) 

    monthly_saving(i) = monthly_saving(i-1)* (1+monthly_interest)+monthly_contribution;
    %Using formula and saving the total amount saved until that month in a vector.
    
end %To end the loop 

%for loop going from 2 to 22(these represent the year), as the tuition 
% for each year is saved into a vector with being compounded at 7% per 
% annum for each displine

for year=2:22 %Creating a for loop(Purpose above)
    
    Science_cost(year)=Science_cost(year-1)*(1+0.07);
    %Saving the tuition fees for that particular year to a vector, which is
    %being compounded anually
    Eng_cost(year)=Eng_cost(year-1)*(1+0.07); 
    %Saving the tuition fees for that particular year to a vector, which is
    %being compounded anually
    Arts_cost(year)=Arts_cost(year-1)*(1+0.07); 
    %Saving the tuition fees for that particular year to a vector, which is
    %being compounded anually

end %To end the loop

Eng_total=Eng_cost(end-3)+Eng_cost(end-2)+Eng_cost(end-1)+Eng_cost(end);
%Saving total tution for the last 4 years(19,20,21,22) of engineering to a variable.
Science_total=Science_cost(end-3)+Science_cost(end-2)+Science_cost(end-1)+Science_cost(end);
%Saving total tution for the last 4 years(19,20,21,22) of science to a variable
Arts_total=Arts_cost(end-3)+Arts_cost(end-2)+Arts_cost(end-1)+Arts_cost(end);
%Saving total tution for the last 4 years(19,20,21,22) of arts to a variable

fprintf('Savings amount = $%.2f\n',monthly_saving(end)) 
%Displaying total amount saved to command window
fprintf('Arts Tuition cost = $%.2f\n',Arts_total) 
%Displaying total tuition for 4 years of arts to command window
fprintf('Science Tuition cost = $%.2f\n',Science_total) 
%Displaying total tuition for 4 years of science to command window
fprintf('Engineering Tuition cost = $%.2f\n',Eng_total)  
%Displaying total tuition for 4 years of engineering to command window

plot((1:216)/12,monthly_saving,'b',(1:216)/12,Arts_total*ones(1,216),'r', ...
    (1:216)/12,Science_total*ones(1,216),'y',(1:216)/12,Eng_total*ones(1,216),'c')
%Creating a graph with 4 lines where each line is distinctly represented
%with a different colour. Muliplying those quantities by ones to ensure
%consistency of the quantities of x and y axises

title('Version 1 - Savings vs Tuition cost') %Giving title to the graph
xlabel('Time - Years') %Giving the label of x-axis to graph
ylabel('Amount - Dollars') %Giving the label of y-axis to graph
legend('Savings','Arts','Science','Engineering','Location','southeast')
%Creating a legend which tells what each line represent and is placed in
%the southeast location. So, that it doesn't interfere with the graph.

%------- Version 2---------%

%Psuedo Code for Version 2

%Creating variable(appropr_value) which breaks the while loop, if a proper
%entry is entered.
%Final_total helps to save the total tution fees for the particular displine selected

%while approp_value is false
%   getting program choice 
%   switch
%     case 1
%       Displaying if saved (enough or not) and assigning final total as
%       that major's total tuition
%     case 2
%       Displaying if saved (enough or not) and assigning final total as
%       that major's total tuition
%     case 3
%       Displaying if saved (enough or not) and assigning final total as
%       that major's total tuition
%     Otherwise
%       Displaying that the entry is invalid and asking user to re-enter
%       the choice

%Monthly contribution calculator

%Creating a new empty vector(monthly_saving_new) which would store all the
%total savings for that particular monthly contribution.

%while Final total>Total saving
%  for to run until the number of months( in 18 years) 
%     saving monthly saving for that particular contribution to vector

%Displaying Output on Screen



disp(' ') %Displaying empty line on command window
disp(' ') %Displaying empty line on command window
disp('Version 2') %Displaying text on command window

approprp_value=false; 
%Used to check, if entry is appropriate. If entry appropriate, then it 
% returns true and terminates the while loop.

Final_total=0;
%Saves the final total tuition fee of chosen disciple in a variable. 

while approprp_value==false % Keeps on running until appropriate value not entered

    inputed_value=input('Please select  program to optimize (1-Arts, 2-Science, 3-Engineering):','s');
    %Used to accept a selected a major, and computation performed for that major

    switch inputed_value % Create a switch statement
    
        case '1' %Proceeds if value entered is 1 

            if monthly_saving(end)>=Arts_total 
                %If final amount saved is greater than total tuition fees

                disp('Congratulations!!! You have saved enough for the arts program')
                %Displaying text on command window
           
            else

                disp('Unfortunately!!! You do not have enough saved for arts program')
                %Displaying text on command window
    
            end %Terminating if loop
    
            Final_total=Arts_total; % Saving total tuition into variable for that displine
            approprp_value=true; % As value entered is appropriate, so later breaks loop 
    
        case '2' %Proceeds if value entered is 2 

            if monthly_saving(end)>=Science_total 
                %If final amount saved is greater than total tuition fees

                disp('Congratulations!!! You have saved enough for the science program')
                %Displaying text on command window
           
            else

                disp('Unfortunately!!! You do not have enough saved for science program')
                %Displaying text on command window
    
            end %Terminating if loop
    
            Final_total=Science_total; % Saving total tuition into variable for that displine
            approprp_value=true; % As value entered is appropriate, so later breaks loop
    
        case '3' %Proceeds if value entered is 3 

            if monthly_saving(end)>=Eng_total
                %If final amount saved is greater than total tuition fees

                disp('Congratulations!!! You have saved enough for the engineering program')
                %Displaying text on command window
           
            else 

                disp('Unfortunately!!! You do not have enough saved for engineering program')
                %Displaying text on command window
    
            end %Terminating if loop

            Final_total=Eng_total; % Saving total tuition into variable for that displine
            approprp_value=true; % As value entered is appropriate, so later breaks loop

        otherwise %If none of cases satisfied

            approprp_value=false; % As value entered is inappropriate, so loop continues
            disp('Incorrect input entered. Only (1 2 3) are allowed. Try again!')
            %Displaying text on command window

    end %Ending for switch
end %Ending for while loop

%Monthly contribution calculator

monthly_contribution=0; %Initial monthly contribution, set as 0
monthly_saving_new=zeros(1,216); 
%New empty vector, with 216 columns as 216 months in 18 years
monthly_saving_new(1)=2000;
%Setting initial contribution as 2000.

while Final_total > monthly_saving_new(end)
    %Keeps on runing until final saving is not greater than tuition fees
   
    monthly_contribution=monthly_contribution+1; 
    %Increasing monthly contribution by 1

    for i=2:216
        % Until 216 as 216 months in 18 years

        monthly_saving_new(i)= monthly_saving_new(i-1)* (1+monthly_interest)+monthly_contribution;
        %Using formula and saving the saving in that particular month in a vector.

    end %Terminating for loop

end %Terminating while loop

fprintf('The optimal monthly contribution amount is = $ %d\n',monthly_contribution)
%Displaying output on the commmand window














%----------------------------Program Ends---------------------------------%