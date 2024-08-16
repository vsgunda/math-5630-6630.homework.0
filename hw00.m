% Author: Your Name / your_email
% Date: 2024-09-01
% Assignment Name: hw00

% The following class defines 3 functions for each problem respectively.
% Please follow the instruction inside each function. 

classdef hw00 
    methods (Static)

        function a_m = p1(m)
            % This function takes an integer m and returns the term a_m in the sequence defined by 
            % a_0 = 0, a_1 = 1, a_2 = 1, and a_n = a_{n-1} + a_{n-2} + a_{n-3} for n >= 3.
            % :param m: an integer
            % :return: the m-th term in the sequence

            if m < 0
                error('m must be a non-negative integer')
            else 
                a_m = inf; % Write your code here
            end

        end

        function det_A = p2(A)
            % This function takes a matrix A of size n x n and returns the determinant of A.
            % :param A: a numpy matrix of size n x n
            % :return: the determinant of A

            if size(A,1) ~= size(A,2)
                error('A must be a square matrix')
            else
                det_A = inf;% Write your code here, note when you call p2 function inside your function, you need to call it like this: hw00.p2(B), where B is a matrix.
            end
        end

        function p3()
            % This function should have a run time about 1 second.
            % :return: no returns

            % Write your code here
        end
    end
end