function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example

    theta_0 = theta(1);
    theta_1 = theta(2);
    theta_2 = theta(3);
    % theta0 set to 1
   %hypothesis =X(training_example,1) * theta_0 + theta_1 * X(training_example, 2);
    
    hypothesis =1 * theta_0 + theta_1 * X(training_example, 2) + theta_2 * X(training_example, 3);
    
    
    %hypothesis = 0.0;
end

