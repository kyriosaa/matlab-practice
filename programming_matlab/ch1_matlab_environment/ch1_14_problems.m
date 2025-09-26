% 1.14 Practice Problems

% ------------------------------------------------------------------------
% 1-1: Plot the following functions using the plot() function
    % sin(x)                for -10 <= x <= 10
    % sin(x)cos(x)          for -10 <= x <= 10
    % cos(x)sin(x)exp(x/10) for  -1 <= x <=  1

    % x = linspace(-10, 10, 500);
    % y = sin(x);
    % plot(x, y)
    % title('1-1 sin(x)')
    % pause;
    % 
    % x = linspace(-10, 10, 500);
    % y1 = sin(x);
    % y2 = cos(x);
    % plot(x, y1, x, y2)
    % title('1-1 sin(x)cos(x)')
    % pause;
    % 
    % x = linspace(-1, 1, 100);
    % y1 = cos(x);
    % y2 = sin(x);
    % y3 = exp(x/10);
    % plot(x, y1, x, y2, x, y3)
    % title('1-1 cos(x)sin(x)exp(x/10)')
    % pause;
% ------------------------------------------------------------------------
% 1-2: Write a script that does the following:
    % 1. Creates a random 5x5 matrix, displays that random matrix,
    %    calculates and displays the inverse of the random matrix, and
    %    displays the result of the matrix times its inverse.
    % 2. Asks the user to input three text strings with the input()
    %    function and prints out the concatenation of all three.
    % 3. Asks the user for a text string and changes the word "the" to
    %    "hey".
    % 4. Asks the user for a text string and then tells the user what the
    %    first character was, what the second character was, and what the
    %    third character was.

    rand_matrix = rand(5, 5)
    inv_rand_matrix = inv(rand_matrix)
    final_matrix = rand_matrix*inv_rand_matrix
    pause;

    p1 = input('Input phrase 1: ', 's');
    p2 = input('Input phrase 2: ', 's');
    p3 = input('Input phrase 3: ', 's');
    p123 = [p1, p2, p3];
    fprintf(p123);
    fprintf('\n');
    pause;

    
% ------------------------------------------------------------------------
% 1-3: Create a script that does the following:
    % 1. Displays your name and major.
    % 2. Pauses for 5 seconds after the above information is displayed.
    % 3. Asks the user to input a number between 50 and 100. Call it x.
    % 4. Takes the square root of the number and displays it in long
    %    format.
    % 5. Pauses until a key is pressed.
    % 6. Sets up an array of 100 values for time from 0 to 0.1 seconds.
    %    Don't display the values.
    % 7. Calculates y=sin(2πxt) using the time array created in step 6 and
    %    the value of x from step 3.
    % 8. Plot 'y' vs 't' using the plot() function
    % 9. Label the x and y axes using the MATLAB xlabel() and ylabel()
    %    functions.


% ------------------------------------------------------------------------
% 1-4: Find the solution (A, B, C) to the system of equations:
    %   10 =  400A -  175B
    %    0 = -175A +  800B - 250C
    %    5 =         -300B + 600C

    