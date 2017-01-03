% Test the optimization by learning XOR

% Inputs
X = [1 1 ; 1 0 ; 0 1 ; 0 0];

% Outputs
Y = [[0] ; [1] ; [1] ; [0]];

% Train the network
net = train(X, Y, depth=3, popsize=100, threshold=1e-5, survival_rate=0.2, mutation_rate=0.5);

% Output predicted truth table
[X predict(X, net)]
