
%% task 1
load('PB_data.mat');
J = [f1,f2];

[n,~] = size(J);

figure(1);
plot(J(:,1),J(:,2),'.');


%% task 2
% calculate mean
mu = mean(J);

% calculate covariance 
covar = cov(J);

K = 3;

figure(2);
plot_gaussian(covar,mu,2,K);
%% task 3
x = [f1, f2];






