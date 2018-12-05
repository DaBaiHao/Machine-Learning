
x = x1;
[n, D] = size(x);



mean = (sum(x))/n;    % Mean
variance = zeros(1,2);              % variance

k = 3;                              % number of components
for i = 1:n
    variance = variance + (x(i, :)- mean) .* ((x(i, :) - mean));
end
variance = variance/n;


