function X = predict(X, unit)
  % Propigates a neural network represented by a cell of matrices

  for i = 1:size(unit, 1)
    X = sigmoid([ones(size(X, 1), 1) X] * unit{i, 1}');
  end
end
