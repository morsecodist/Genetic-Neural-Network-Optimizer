function g = sigmoid(z)
% SIGMOID Compute sigmoid functoon
% Used for activation function

  g = 1.0 ./ (1.0 + exp(-z));
end
