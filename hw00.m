% Author: Vishnu Gunda / vsg0005@auburn.edu
% Date: 2024-09-04
% Assignment Name: hw00

classdef hw00 
    methods (Static)

        function a_m = p1(m)            
            a_m = 0; % This is the answer to the sequence at the given index. 0 is a placeholder

            if m < 0
                fprintf("index out of bounds\n");
            elseif m == 0
                a_m = 0; % a_0 = 0
                fprintf("The answer is %d\n", a_m);
            elseif m == 1
                a_m = 1; % a_1 = 1
                fprintf("The answer is %d\n", a_m);
            elseif m == 2
                a_m = 1; % a_2 = 1
                fprintf("The answer is %d\n", a_m);
            else
                a_n_minus_2 = 0; % a_0
                a_n_minus_1 = 1; % a_1
                a_n = 1;         % a_2
                
                for n = 3:m
                    a_m = a_n + a_n_minus_1 + a_n_minus_2;
                    a_n_minus_2 = a_n_minus_1;
                    a_n_minus_1 = a_n;
                    a_n = a_m;
                end
                fprintf("The answer is %d\n", a_m);
            end
        end

        function det_A = p2(A)
            [~, n] = size(A);
            if n == 1
                det_A = A;
            elseif n == 2
                det_A = A(1,1)*A(2,2) - A(1,2)*A(2,1);
            else
                det_A = 0;
                for j = 1:n
                    B = A;
                    B(:,j) = [];
                    det_A = det_A + (-1)^(1+j) * A(1,j) * p2(B);
                end
            end
        end

        function p3()
            tic;
            pause(0.99995);
            toc;
        end
    end
end
