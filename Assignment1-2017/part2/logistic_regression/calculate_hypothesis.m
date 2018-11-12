function result=calculate_hypothesis(X,theta,training_example)
    hypothesis = 0.0;
    %%%%%%%%%%%%%%%%%%%%%%%%
    %Calculate the hypothesis for the i-th training example in X.
    [y , x] = size(theta);
    for i =1 : x
        hypothesis = hypothesis + X(training_example, i)* theta(i);
    end
    %hypothesis = X(training_example, 1)* theta(1) + X(training_example, 2)* theta(2) + X(training_example, 3)* theta(3) ;
    %%%%%%%%%%%%%%%%%%%%%%%%
    result=sigmoid(hypothesis);
end
%END OF FUNCTION
    

