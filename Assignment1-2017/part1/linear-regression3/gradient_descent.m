function theta = gradient_descent(X, y, theta, alpha, iterations,l, do_plot)
    %GRADIENT_DESCENT do Gradient Descent for a given X, y, theta, alpha
    %for a specified number of iterations

    %if less than 6 arguments was given, then set do_plot to be false
    if nargin < 6
        do_plot = false;
    end
    if(do_plot)
        plot_hypothesis(X, y, theta);
        drawnow; pause(0.1); 
    end

    m = size(X, 1); %number of training examples
    cost_vector = []; %will store the results of our cost function

    for it = 1:iterations
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % gradient descent
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       
        

        %update theta(1) and store in temporary variable theta_0
        sigma = 0.0;

        for i = 1:m
            %hypothesis = 1 * theta(1) + X(i, 1) * theta(2) + X(i, 2) * theta(3);
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output)*X(i, 1);
        end

        theta(1) = theta(1) - ((alpha * 1.0) / m) * sigma;


        %update theta(2) and store in temporary variable theta_1
        sigma = 0.0;

        for i = 1:m
            %hypothesis = X(i, 1) * theta(1) + X(i, 2) * theta(2);
            %hypothesis = 1 * theta(1) + X(i, 1) * theta(2) + X(i, 2) * theta(3);
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, 2);
        end

        theta(2) = theta(2)*(1 - alpha*l/m) - ((alpha * 1.0) / m) * sigma;
       
        
         
        for i = 1:m
            %hypothesis = X(i, 1) * theta(1) + X(i, 2) * theta(2);
            %hypothesis = 1 * theta(1) + X(i, 1) * theta(2) + X(i, 2) * theta(3);
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, 3);
        end

        theta(3) = theta(3)*(1 - alpha*l/m) - ((alpha * 1.0) / m) * sigma;
       
        
        for i = 1:m
            
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, 4);
        end

        theta(4) = theta(4)*(1 - alpha*l/m) - ((alpha * 1.0) / m) * sigma;
       
        for i = 1:m
            
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, 5);
        end

        theta(5) = theta(5)*(1 - alpha*l/m) - ((alpha * 1.0) / m) * sigma;
       
        
        for i = 1:m
            
            hypothesis = calculate_hypothesis(X,theta,i);
            output = y(i);
            sigma = sigma + (hypothesis - output) * X(i, 6);
        end

        theta(6) = theta(6)*(1 - alpha*l/m) - ((alpha * 1.0) / m) * sigma;
       
        
        %update theta
        %theta = [theta_0, theta_1, theta_2];
        disp (theta);
        
        %update cost_vector
        cost_vector = [cost_vector; compute_cost_regularised(X, y, theta,l)];

        if do_plot
            plot_hypothesis(X, y, theta);
            drawnow; pause(0.1); 
        end
    end

    disp 'Gradient descent is finished.'
        
    if do_plot
        disp 'Press enter!'
        pause;
    end

    plot_cost(cost_vector);
        
    disp 'Press enter!';
    pause;
end