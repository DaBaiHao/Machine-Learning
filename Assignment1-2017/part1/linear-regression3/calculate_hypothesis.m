function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example

    %theta_0 = theta(1);
    hypothesis =(X(training_example, 1)) * theta(1) + theta(2) * (X(training_example, 2))^1 + theta(3) * (X(training_example, 3))^2+ theta(4) * (X(training_example, 4))^3+ theta(5) * (X(training_example, 5))^4+ theta(6) * (X(training_example, 6)^5);
    %hypothesis = 0.0;
end

