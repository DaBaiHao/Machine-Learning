function h=plot_sigmoid
    x = [((1:2000)/100.0)-10];
    y = [sigmoid(x)]
    h=figure(1); 
    
    tiltle('sigmoid');
    plot(x,y,'-');
    xlabel('x');
    ylabel('y');
    
    %END OF FUNCTION
end

    