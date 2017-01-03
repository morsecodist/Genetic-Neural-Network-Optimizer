function J = fitness_function(unit, X, Ys)
% A simple mean squared error fitness function

J = mean(mean((predict(X, unit) - Ys) .^ 2));

end
