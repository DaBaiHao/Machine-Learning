
x = [f1, f2];
[n, D] = size(x);



mean = (sum(transpose(x))')/n;    % Mean
variance = zeros(1);              % variance

k = 3;                              % number of components
for i = 1:n
    variance = variance + (x(i, :)- mean) * ((x(i, :) - mean)');
end
variance = variance/n;

plot(x(:,1),x(:,2),'.');
for i=1:k
    plot_gaussian(2*s2(:,:,i),mu(:,i),i,11);
end