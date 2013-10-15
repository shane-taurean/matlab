% Testing Linear regression

clear all;
clc;
% 
x_t = [1:1:50];         % assume some huge data set
y_t = [1:2:100]; 

% interested in analyzing only a portion of the data set
x = zeros(1,25);        % limiting to 25
y = zeros(1,25);
x(1:10) = x_t(1:10);    % interested in analyzing 10 samples
y(1:10) = y_t(1:10);

p = polyfit(x,y,1);     % find the coefficients of a polynomial p(x) of degree n
n = length(p);
figure('Name','Plot 1 -- Coefficients');
plot(x(1:n),y(1:n),'o',x(1:n),p,'-');   % (1:n) ensures that vector sizes are the same
                                        % This gets rid of the following error:
                                        % ??? Error using ==> plot
                                        % Vectors must be the same lengths.

f = polyval(p,x);       %returns the value of a polynomial of degree n evaluated at x
n = length(f);
figure('Name','Plot 2 -- polynomial evaluated at x');
plot(x(1:n),y(1:n),'o',x(1:n),f,'-');

R = corrcoef(x,f);
R(1,2)  % A correlation coefficient with a magnitude near 1 (as in this case) represents a good fit.  
        % As the fit gets worse, the correlation coefficient approaches zero.