%% This loads our data
[X, y] = load_data_ex2();
 

%% Normalise and initialize.
[X, mean_vec, std_vec] = normalise_features(X);

%after normalising we add the bias
X = [ones(size(X, 1), 1), X];

%initialise theta
theta = [0.0, 0.0, 0.0];
alpha = 0.5;
iterations = 100;

%% 
theta = gradient_descent(X, y, theta, alpha, iterations);
%disp(theta);
Xpredict = [3000,4];
Xnorm = (Xpredict - mean_vec)./std_vec;
Xnorm = [1,Xnorm];
Ypredict = sum(Xnorm .* theta);
disp(Ypredict);
disp 'Press enter to exit!';
pause;